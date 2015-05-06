<?php

class DocumentHolder extends Page {
    private static $icon = "mysite/images/icon/docs.png";
    private static $db = array(
        'Header'=>'Varchar',
        'ImagePath'=>'Varchar'
	);
	private static $has_many = array(
	    'DocumentPages'=>'DocumentPage'
	);
	private static $has_one = array(
	);
    private static $allowed_children = array(
	);	
	
	public function onBeforeWrite(){
        parent::onBeforeWrite();
     
        if(!$this->ImagePath){
           $this->ImagePath = "home";
        }
        
    }
	
	function getSettingsFields() {
        $fields = parent::getSettingsFields();
        $fieldGroup = new FieldGroup(
            new TextField('ImagePath', 'Path to page containing images: (Base path ex. home)')
        );
        $fieldGroup->setTitle("Header Image Settings");
        $fieldGroup->setName("ImagePathSettings");
        $fields->addFieldToTab("Root.Settings", $fieldGroup);
        return $fields;
    }
	
	public function getCMSFields(){
		$fields = parent::getCMSFields();
    	
    	$gridFieldConfig2 = new GridFieldConfig();
		$gridFieldConfig2->addComponent($addButton = new GridFieldAddNewButton('toolbar-header-rightt'));
		$addButton->setButtonName('New');
        $gridFieldConfig2->addComponent(new GridFieldToolbarHeader());
		$gridFieldConfig2->addComponent(new GridFieldDataColumns());
		$gridFieldConfig2->addComponent(new GridFieldEditButton());
		$gridFieldConfig2->addComponent(new GridFieldDeleteAction());
		$gridFieldConfig2->addComponent($pagination = new GridFieldPaginator(10));
		$gridFieldConfig2->addComponent(new GridFieldDetailForm());
		$gridFieldDocuments = new GridField("DocumentPages", "Documents", $this->DocumentPages(), $gridFieldConfig2);
		
		$fields->addFieldToTab("Root.Main", $headTextField = new TextField("Header","Header"), "Content");
		$headTextField->RightTitle("Enter header i.e. \"Bulletins\" or \"Forms\"");
		$fields->addFieldToTab("Root.Main", $gridFieldDocuments, 'Content');
		$fields->removeFieldFromTab("Root.Main", 'Content');
		
		return $fields;
	}
	
	public function AngularController(){
	    return "DocumentHolderController";
	}
// 	public function getHeader(){
// 	    return $this->Header()->getValue();
// 	}
	public function getOrganizeDocuments(){
	    $retarr = array();
	    foreach($this->DocumentPages() as $doc) {
	        $date = new Date();
	        $date->setValue($doc->DocumentDate);
	        
	        $year = $date->Year();
	        $month = $date->Format('m');
	        $day = $date->DayOfMonth();
	        $found = false;
	        if(sizeof($retarr)===0){
	           $retarr[$year] = array($month=>array($day=>$doc->Document()->Filename));
	        }else{
    	        foreach($retarr as $curYear=>$months){
    	            if($curYear == $year){
    	                foreach($months as $curMonth=>$days){
    	                    if($curMonth == $month){
    	                        foreach($days as $curDay=>$link){
    	                            if($curDay == $day){
    	                                $link = $doc->Document()->Filename;
    	                                $found = true;
    	                            }
    	                        }
    	                    }
    	                    ksort($retarr[$curYear][$curMonth]);
    	                }
    	                if(!$found){
    	                    $retarr[$year][$month][$day]=$doc->Document()->Filename;
    	                    ksort($retarr[$year][$month]);
    	                }
    	                $found = true;
    	            }
        	        if(!$found){
        	            $retarr[$year] = array($month=>array($day=>$doc->Document()->Filename));
        	            ksort($retarr[$year][$month]);
        	        }
    	        }
	        }
	    }
	    ksort($retarr);
	    return $retarr;
	}
}

class DocumentHolder_Controller extends Page_Controller{
	public function init() {
		parent::init();
	}
    private static $allowed_actions = array (
	    'ajax',
	    'JSON'
	);

    public function ajax() {
		return $this->renderWith('AngularDocumentHolder');
	}
	
	public function JSON() {
	    $retval = array();
	    $retval["documents"] = array("title"=>$this->Header, "data"=>$this->getOrganizeDocuments());
	    $retval["imagepath"] = $this->ImagePath."/IMAGES";
	    $retval["controller"] = "DocumentHolderController";
	    return json_encode($retval, JSON_FORCE_OBJECT);
	}
}

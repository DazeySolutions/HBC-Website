<?php

class DocumentHolder extends Page {
    private static $db = array(
        'Header'=>'Varchar'
	);
	private static $has_many = array(
	    'DocumentPages'=>'DocumentPage'
	);
	private static $has_one = array(
	);
    private static $allowed_children = array(
	);	
	public function getCMSFields(){
		$fields = parent::getCMSFields();
    	
    	$gridFieldConfig2 = new GridFieldConfig();
		$gridFieldConfig2->addComponent(new GridFieldButtonRow('before'));
		$gridFieldConfig2->addComponent($addButton = new GridFieldAddNewButton('buttons-before-left'));
		$addButton->setButtonName('Add Document');
        $gridFieldConfig2->addComponent(new GridFieldToolbarHeader());
		$gridFieldConfig2->addComponent($sort = new GridFieldSortableHeader());
		$gridFieldConfig2->addComponent($filter = new GridFieldFilterHeader());
		$gridFieldConfig2->addComponent(new GridFieldDataColumns());
		$gridFieldConfig2->addComponent(new GridFieldEditButton());
		$gridFieldConfig2->addComponent(new GridFieldDeleteAction());
		$gridFieldConfig2->addComponent(new GridFieldPageCount('toolbar-header-right'));
		$gridFieldConfig2->addComponent($pagination = new GridFieldPaginator(10));
		$gridFieldConfig2->addComponent(new GridFieldDetailForm());
		//$gridFieldConfig2->addComponent(new GridFieldSortableRows('Date.Format("U")'));
		
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
	
	public function getOrganizeDocuments(){
	    $retarr = array();
	    foreach($this->DocumentPages() as $doc) {
	        $date = new Date();
	        $date->setValue($doc->DocumentDate);
	        
	        $year = $date->Year();
	        $month = $date->Month();
	        $day = $date->DayOfMonth();
	        $found = false;
	        if(sizeof($retarr)===0){
	           $retarr[$year] = array($month=>array($day=>$doc->Document()->Filename));
	           print_r($retarr);
	        }else{
    	        foreach($retarr as $curYear=>$months){
    	            if($curYear === $year){
    	                foreach($months as $curMonth=>$days){
    	                    if($curMonth === $month){
    	                        foreach($days as $curDay=>$link){
    	                            if($curDay === $day){
    	                                $link = $doc->Document()->Filename;
    	                                $found = true;
    	                            }
    	                        }
    	                        if(!$found){
    	                            $days[$day]=$doc->Document()->Filename;
    	                        }
    	                        $found = true;
    	                    }
    	                }
    	                if(!$found){
    	                    $months[$month]=array($day=>$doc->Document()->Filename);
    	                }
    	                $found = true;
    	            }
        	        if(!$found){
        	            $retarr[$year] = array($month=>array($day=>$doc->Document()->Filename));
        	        }
    	        }
	        }
	    }
	    return $retarr;
	}
}

class DocumentHolder_Controller extends Page_Controller{
	public function init() {
		parent::init();
	}
    private static $allowed_actions = array (
	    'ajax',
	    'ajaxContent'
	);

    public function ajax() {
		return $this->renderWith('AngularDocumentHolder');
	}
	
	public function ajaxContent() {
	    return json_encode($this->getOrganizeDocuments(), JSON_FORCE_OBJECT);
	}
}

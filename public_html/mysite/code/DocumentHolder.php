<?php

class DocumentHolder extends Page {
    private static $db = array(
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
	        echo $date;
	        $year = $date->Year;
	        $month = $date->Month;
	        $day = $date->Day;
	        $found = false;
	        foreach($retarr as $curArr){
	            if($curArr['year'] == $year){
	                foreach($currArr['months'] as $monthArr){
	                    if($monthArr['month'] == $month){
	                        foreach($monthArr['days'] as $day){
	                            if($day['num'] == $day){
	                                $day['link'] = $doc->Document()->Filename;
	                                $found = true;
	                            }
	                        }
	                        if(!$found){
	                            $monthArr['days'] = new ArrayData(array("num"=>$day, "link"=>$doc->Document()->Filename));
	                            $found = true;
	                        }
	                    }
	                }
	                if(!$found){
	                    $currArr['months'] = new ArrayData(array("month"=>$month, "days"=> new ArrayData(array("num"=>$day, "link"=>$doc->Document()->Filename))));
	                    $found = true;
	                }
	                $found = true;
	            }
	        }
	        if(!$found){
	            $retarr[] = new ArrayData(array('year'=>$year, "months"=>new ArrayData(array("month"=>$month, "days"=>new ArrayData(array("num"=>$day, "link"=>$doc->Document()->Filename))))));
	        }
	    }
	    
	    return new ArrayList($retarr);
	}
}

class DocumentHolder_Controller extends Page_Controller{
	public function init() {
		parent::init();
	}
    private static $allowed_actions = array (
	    'ajax'
	);

    public function ajax() {
		return $this->renderWith('AngularDocumentHolder');
	}
}

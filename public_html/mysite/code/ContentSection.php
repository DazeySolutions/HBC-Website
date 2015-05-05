<?php

class ContentSection extends DataObject{
	private static $db = array(
		'SortOrder' => 'Int',
        'Title' => 'Varchar',
		'Content' => 'HTMLText'
	);
    private  static $extensions = array(
        "Versioned('Stage', 'Live')"
    );
	private static $has_one = array(
		"ContentPage"=>"ContentPage"
	);
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","ContentPageID");
		$fields->removeFieldFromTab("Root.Main","SortOrder");
        return $fields;
	}
	private static $summary_fields = array(
		'Title.UpperCase'=>'Title',
	);
	public function canEdit($member = null){
	    if(Permission::check('SITETREE_EDIT_ALL')){
            return true;  
        } 
        else if(Permission::check('PAGE_ADD_CONTENT_BUTTONS')){
            return true;  
        }
        else{
            return false;
        }
	}
    
    public function canView($member = null){
        if(Permission::check('SITETREE_VIEW_ALL')){
            return true;  
        } else{
            return false;
        }
	}
}

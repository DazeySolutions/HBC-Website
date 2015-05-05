<?php

class ContentSection extends DataObject implements PermissionProvider{
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
	    if(Permission::check('SITETREE_EDIT_ALL')) return true;
	    return parent::canEdit($member);
	}
    
    public function canView($member = null){
        if(Permission::check('SITETREE_VIEW_ALL')) return true;
	    return parent::canView($member);
	}
}

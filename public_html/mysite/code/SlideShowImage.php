<?php

class SlideShowImage extends DataObject{
	private static $db = array(
		'SortOrder' => 'Int',
		'Description' => 'Text',
		'Link' => 'Text'
	);
    private   static $extensions = array(
        "Versioned('Stage', 'Live')"
    );
	private static $has_one = array(
	    "ContentPage"=>"ContentPage",
		'Image' => 'Image'
	);
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","PageID");
		$fields->removeFieldFromTab("Root.Main","SortOrder");
        $fields->removeFieldFromTab("Root.Main","Link");
        $fields->removeFieldFromTab("Root.Main","ContentPageID");
        $fields->removeFieldFromTab("Root.Main","Description");
        $fields->addFieldToTab("Root.Main", TextField::create("Link", "Link (optional)"), "Image");
        $fields->addFieldToTab("Root.Main", TextField::create("Description"), "Image");
		return $fields;
	}
	private static $summary_fields = array(
		'Description'=>'Description',
		'Link'=>'Link',
		'Thumbnail'=>'Thumbnail'
	);
	public function getThumbnail(){
		return $this->Image()->CMSThumbnail();
	}
	
	public function canEdit($member = null){
	    if(Permission::check('SITETREE_EDIT_ALL')){
            return true;  
        }
        else if(Permission::check('PAGE_ADD_BACKGROUND_BUTTONS')){
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

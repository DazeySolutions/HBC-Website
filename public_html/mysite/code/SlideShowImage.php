<?php

class SlideShowImage extends DataObject {
	private static $db = array(
		'SortOrder' => 'Int',
		'Description' => 'Text',
		'Link' => 'Text'
	);
    private   static $extensions = array(
        "Versioned('Stage', 'Live')"
    );
	private static $has_one = array(
	    "CustomPage"=>"CustomPage",
		'Image' => 'Image'
	);
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","PageID");
		$fields->removeFieldFromTab("Root.Main","SortOrder");
        $fields->removeFieldFromTab("Root.Main","Link");
        $fields->removeFieldFromTab("Root.Main","CustomPage");
        $fields->addFieldToTab("Root.Main", TextField::create("Link"), "Description");
        $fields->addFieldToTab("Root.Main", new ReadOnlyField("CustomPage", "Parent"), "Link");
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
}

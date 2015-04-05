<?php
class GalleryPage extends CustomPage {
	private static $db = array(
	    "GalleryTitle"=>"Text"
		);
    public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->fieldByName('SlideShowImages')->setTitle("Gallery Image");
		$fields->fieldByName('SlideShowImages')->setName("GalleryImage");
		$fields->addFieldToTab("Root.Main",new TextField("GalleryTitle","Gallery Title"), 'MenuTitle');
		$fields->removeFieldFromTab("Root.Main", 'ContentSections');
		$fields->removeFieldFromTab("Root.Main", 'Content');
		return $fields;
	}
}
class GalleryPage_Controller extends CustomPage_Controller {
    public function init() {
		parent::init();
	}
}
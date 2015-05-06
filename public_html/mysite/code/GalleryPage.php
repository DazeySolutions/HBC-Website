<?php
class GalleryPage extends ContentPage {
    private static $icon = "mysite/images/icon/gallery.png";
	private static $db = array(
	    "GalleryTitle"=>"Text"
	);
	private static $allowed_children = array();
    public function getCMSFields(){
		$fields = parent::getCMSFields();
		$gridFieldConfig = new GridFieldConfig();
		$gridFieldConfig->addComponent($addButton = new GridFieldAddNewButton('toolbar-header-right'));
		$addButton->setButtonName('New');
        $gridFieldConfig->addComponent(new GridFieldToolbarHeader());
		$gridFieldConfig->addComponent(new GridFieldSortableHeader());
		$gridFieldConfig->addComponent(new GridFieldDataColumns());
		$gridFieldConfig->addComponent(new GridFieldEditButton());
		$gridFieldConfig->addComponent($pagination = new GridFieldPaginator(10));
		$gridFieldConfig->addComponent(new GridFieldDetailForm());
		$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
		
		$gridFieldSlideShowImages = new GridField("SlideShowImages", "Gallery Images", $this->SlideShowImages()->sort("SortOrder"), $gridFieldConfig);
		$fields->replaceField("SlideShowImages", $gridFieldSlideShowImages);
		$fields->addFieldToTab("Root.Main",new TextField("GalleryTitle","Gallery Title"), 'MenuTitle');
		$fields->removeFieldFromTab("Root.Main", 'ContentSections');
		$fields->removeFieldFromTab("Root.Main", 'Content');
		return $fields;
	}
	public function AngularController(){
	    return "GalleryPageController";
	}
}
class GalleryPage_Controller extends ContentPage_Controller {
    public function init() {
		parent::init();
	}
	private static $allowed_actions = array (
		'ajax',
		'JSON'
	);
    public function JSON() {
        $retval = array();
        $retval["controller"] = "GalleryPageController";
        return json_encode($retval, JSON_FORCE_OBJECT);
    }
	public function ajax() {
		return $this->renderWith('AngularGallery');
	}
}

<?php
class GalleryPage extends CustomPage {
	private static $db = array(
	    "GalleryTitle"=>"Text"
		);
    public function getCMSFields(){
		$fields = parent::getCMSFields();
		$gridFieldConfig = new GridFieldConfig();
		$gridFieldConfig->addComponent(new GridFieldButtonRow('before'));
		$gridFieldConfig->addComponent($addButton = new GridFieldAddNewButton('buttons-before-left'));
		$addButton->setButtonName('Add Galery Image');
        $gridFieldConfig->addComponent(new GridFieldToolbarHeader());
		$gridFieldConfig->addComponent($sort = new GridFieldSortableHeader());
		$gridFieldConfig->addComponent($filter = new GridFieldFilterHeader());
		$gridFieldConfig->addComponent(new GridFieldDataColumns());
		$gridFieldConfig->addComponent(new GridFieldEditButton());
		$gridFieldConfig->addComponent(new GridFieldDeleteAction());
		$gridFieldConfig->addComponent(new GridFieldPageCount('toolbar-header-right'));
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
}
class GalleryPage_Controller extends CustomPage_Controller {
    public function init() {
		parent::init();
	}
	private static $allowed_actions = array (
			'ajax'
			);

	public function ajax() {
		return $this->renderWith('AngularGallery');
	}
}
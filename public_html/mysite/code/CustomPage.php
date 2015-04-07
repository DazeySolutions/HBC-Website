<?php
class CustomPage extends SiteTree {

	private static $db = array(
			);
	private static $has_many = array(
			'SlideShowImages' => 'SlideShowImage',
			'ContentSections' => 'ContentSection'
			);
	private static $has_one = array(
			);
private static $allowed_children = array(
			"*Page",
			"CustomUserDefinedForm",
			"RedirectorPage"	
			);	
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		
		$gridFieldConfig2 = new GridFieldConfig();
		$gridFieldConfig2->addComponent(new GridFieldButtonRow('before'));
		$gridFieldConfig2->addComponent($addButton = new GridFieldAddNewButton('buttons-before-left'));
		$addButton->setButtonName('Add Background Slide');
        $gridFieldConfig2->addComponent(new GridFieldToolbarHeader());
		$gridFieldConfig2->addComponent($sort = new GridFieldSortableHeader());
		$gridFieldConfig2->addComponent($filter = new GridFieldFilterHeader());
		$gridFieldConfig2->addComponent(new GridFieldDataColumns());
		$gridFieldConfig2->addComponent(new GridFieldEditButton());
		$gridFieldConfig2->addComponent(new GridFieldDeleteAction());
		$gridFieldConfig2->addComponent(new GridFieldPageCount('toolbar-header-right'));
		$gridFieldConfig2->addComponent($pagination = new GridFieldPaginator(10));
		$gridFieldConfig2->addComponent(new GridFieldDetailForm());
		$gridFieldConfig2->addComponent(new GridFieldSortableRows('SortOrder'));
		
		$gridFieldConfig = new GridFieldConfig();
		$gridFieldConfig->addComponent(new GridFieldButtonRow('before'));
		$gridFieldConfig->addComponent($addButton = new GridFieldAddNewButton('buttons-before-left'));
		$addButton->setButtonName('Add Content Section');
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

		$gridFieldSlideShowImages = new GridField("SlideShowImages", "Background Slides", $this->SlideShowImages()->sort("SortOrder"), $gridFieldConfig2);

		$gridFieldContentSections = new GridField("ContentSections", "Page Content Sections", $this->ContentSections()->sort("SortOrder"), $gridFieldConfig);
        
		$fields->addFieldToTab("Root.Main", $gridFieldContentSections, 'Content');
		$fields->addFieldToTab("Root.Main", $gridFieldSlideShowImages, 'Content');

		$fields->removeFieldFromTab("Root.Main", 'Content');

		return $fields;
	}

}
class CustomPage_Controller extends ContentController {

	public function getSlideShowImages(){
		return $this->SlideShowImages()->sort("SortOrder");
	}
	public function getContentSections(){
		return $this->ContentSections()->sort("SortOrder");
	}

	private static $allowed_actions = array (
			'ajax',
			'ajaxContent',
			'ajaxImages'
			);

	public function ajax() {
		return $this->renderWith('AngularPage');
	}
	
	public function ajaxContent(){
	    if(null !== ($this->ContentSections())){
	        return json_encode($this->ContentSections()->toNestedArray());
	    }
	}
	public function ajaxImages($request){
	    if(null !== ($this->SlideShowImages())){
	        $width = $request.getVar('width');
	        $imageUrlArray = array();
	        $counter = 0;
	        $images = $this->SlideShowImages()->sort("SortOrder");
	        foreach($images as $bgImage){
	            $imageUrlArray[$counter] = $bgImage->Image()->setWidth($width);
	            $counter++;
	        }
	        return json_encode($imageUrlArray);
	    }
	}

	public function init() {
		parent::init();
	}

}

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
			"Blog",
			"BlogPost",
			"RedirectorPage"	
			);	
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
		$gridFieldConfig2 = GridFieldConfig_RecordEditor::create();
		$gridFieldConfig2->addComponent(new GridFieldSortableRows('SortOrder'));

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
			'ajaxContent'
			);

	public function ajax() {
		return $this->renderWith('AngularPage');
	}
	
	public function ajaxContent(){
	    if(null !== ($this->ContentSections())){
	        return json_encode($this->ContentSections()->toNestedArray());
	    }
	}

	public function init() {
		parent::init();
	}

}

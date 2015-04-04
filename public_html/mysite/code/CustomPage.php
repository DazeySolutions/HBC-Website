<?php
class CustomPage extends SiteTree {
	private static $icon = 'mysite/images/icon/custom.png';
	private static $db = array(
			);
	private static $many_many = array(
			'SlideShowImages' => 'SlideShowImage',
			'ContentSections' => 'ContentSection'
			);
	private static $has_one = array(
			);
private static $allowed_children = array(
			"*Page",
			"CustomUserDefinedForm",
			"CustomPage",
			"HomePage",
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
			'ajax'
			);

	public function ajax() {
		return $this->renderWith('AngularPage');
	}

	public function init() {
		parent::init();
	}

}

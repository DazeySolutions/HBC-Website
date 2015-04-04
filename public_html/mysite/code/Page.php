<?php
class Page extends SiteTree {

	private static $db = array(
			);
	private static $has_many = array(
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

		return $fields;
	}

}
class Page_Controller extends ContentController {

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

<?php
class HomePage extends CustomPage {

	private static $db = array(
			);
	private static $has_many = array(
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

		return $fields;
	}
	
	public function AngularController(){
	    return "HomePageController";
	}

}
class HomePage_Controller extends CustomPage_Controller {

	private static $allowed_actions = array (
			);
    
	public function init() {
		parent::init();
	}

}

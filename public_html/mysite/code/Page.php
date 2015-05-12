<?php
class Page extends SiteTree {

	private static $db = array(
	);
	private static $has_many = array(
	);
	private static $has_one = array(
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		return $fields;
	}
	public function AngularController(){
	    return "PageController";
	}
	
	public function canCreate($member = null, $parent = false){
	    if($parent){
	        return parent::canCreate($member);
	    }else{
	        return false;
	    }
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
class NoVirtualPage extends VirtualPage implements HiddenClass {
	static $hide_ancestor = 'VirtualPage';
} 
class NoRedirectorPage extends RedirectorPage implements HiddenClass {
	static $hide_ancestor = 'RedirectorPage';
} 
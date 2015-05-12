<?php
class Page extends SiteTree{

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
class NoBlogPost extends BlogPost implements HiddenClass {
	static $hide_ancestor = 'BlogPost';
} 
class NoErrorPage extends ErrorPage implements HiddenClass {
	static $hide_ancestor = 'ErrorPage';
} 
class NoGalleryPage extends GalleryPage implements HiddenClass {
	static $hide_ancestor = 'GalleryPage';
} 
class NoHomePage extends HomePage implements HiddenClass {
	static $hide_ancestor = 'HomePage';
} 
class NoFormPage extends FormPage implements HiddenClass {
	static $hide_ancestor = 'FormPage';
} 
class NoUSERFORMPage extends UserDefinedForm implements HiddenClass {
	static $hide_ancestor = 'UserDefinedForm';
} 


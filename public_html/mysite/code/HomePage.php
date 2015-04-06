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
			'ajax',
			'ajaxContent',
			'ajaxImages'
			);

    public function ajax() {
		return $this->renderWith('AngularHome');
	}
	
	public function ajaxContent(){
	    if(null !== ($this->ContentSections())){
	        return json_encode($this->ContentSections()->toNestedArray());
	    }
	}
	
	public function ajaxImages($request){
	    if(null !== ($this->SlideShowImages())){
	        //$width = $request.getVar('width');
	        print_r($request->getVar('width'));
	        $imageUrlArray = array();
	        $counter = 0;
	        $images = $this->SlideShowImages()->sort("SortOrder");
	        foreach($images as $bgImage){
	            $imageUrlArray[$counter] = $bgImage->Image();
	            $counter++;
	        }
	        return json_encode($imageUrlArray);
	    }
	}
    
	public function init() {
		parent::init();
	}

}

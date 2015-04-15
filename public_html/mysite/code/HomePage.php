<?php
class HomePage extends ContentPage {

	private static $db = array(
			);
	private static $has_many = array(
			);
	private static $has_one = array(
			);
    private static $allowed_children = array(
			"ContentPage"
			);	
	public function getCMSFields(){
		$fields = parent::getCMSFields();

		return $fields;
	}
	
	public function AngularController(){
	    return "HomePageController";
	}

}
class HomePage_Controller extends ContentPage_Controller {

	private static $allowed_actions = array (
			'ajax',
			'ajaxContent',
			'ajaxImages',
			'validAlerts'
			);

    public function validAlerts() {
        return json_encode(Alerts::get()->where("Start <= CURDATE() AND END >= CURDATE()")->sort("End DESC")->toNestedArray());
    }
    
    public function ajax() {
		return $this->renderWith('AngularHome');
	}
	
	public function ajaxContent(){
	    if(null !== ($this->ContentSections())){
	        return json_encode($this->ContentSections()->sort('SortOrder')->toNestedArray());
	    }
	}
	
	public function ajaxImages($request){
	    if(null !== ($this->SlideShowImages())){
	        $width = $request->getVar('width');
	        $imageUrlArray = array();
	        $counter = 0;
	        $images = $this->SlideShowImages()->sort("SortOrder");
	        foreach($images as $bgImage){
	            $imageUrlArray[$counter] = $bgImage->Image()->setWidth($width);
	            $counter++;
	        }
	        $arList = new ArrayList($imageUrlArray);
	        return json_encode($arList->toNestedArray());
	    }
	}
    
	public function init() {
		parent::init();
	}

}

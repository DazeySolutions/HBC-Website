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
	function getSettingsFields() {
        $fields = parent::getSettingsFields();
        $fields->removeFieldFromTab("Root.Settings", "ImagePathSettings");
        return $fields;
    }
	public function getCMSFields(){
		$fields = parent::getCMSFields();

		return $fields;
	}

	public function canCreate($member=null){
    	return false; 
    }

}
class HomePage_Controller extends ContentPage_Controller {

	private static $allowed_actions = array (
			'ajax',
			'JSON',
			'IMAGES',
			'validAlerts'
			);

    public function validAlerts() {
        return json_encode(Alerts::get()->where("Start <= CURDATE() AND END >= CURDATE()")->sort("End DESC")->toNestedArray());
    }
    
    public function ajax() {
		return $this->renderWith('AngularHome');
	}
	
// 	private function ajaxContent(){
// 	    if(null !== ($this->ContentSections())){
// 	        return $this->ContentSections()->sort('SortOrder')->toNestedArray();
// 	    }
// 	}
// 	public function IMAGES($request){
// 	    if(null !== ($this->SlideShowImages())){
// 	        $width = $request->getVar('width');
// 	        $imageUrlArray = array();
// 	        $counter = 0;
// 	        $images = $this->SlideShowImages()->sort("SortOrder");
// 	        foreach($images as $bgImage){
// 	            $imageUrlArray[$counter] = $bgImage->Image()->setWidth($width);
// 	            $counter++;
// 	        }
// 	        $arList = new ArrayList($imageUrlArray);
// 	        return json_encode($arList->toNestedArray());
// 	    }else{
// 	        return json_encode(array());
// 	    }
// 	}
    
    public function JSON(){
        $retval = array();
        $retval["controller"] = "HomePageController";
        $retval["content"] = $this->ajaxContent();
        $retval["imagepath"] = $this->URLSegment."/IMAGES";
        return json_encode($retval, JSON_FORCE_OBJECT);
    }
    
	public function init() {
		parent::init();
	}

}

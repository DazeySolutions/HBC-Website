<?php
class FormHolder extends Page{
    private static $icon = "mysite/images/icon/folder.png";
    private static $allowed_children = array(
	    "FormPage"	
	);
	
	public function canCreate($member = null){
	    return parent::canCreate($member,true);
	}
}

class FormHolderController extends Page_Controller{
    
}
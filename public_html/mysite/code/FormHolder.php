<?php
class FormHolder extends Page{
    private static $icon = "mysite/images/icon/folder.png";
    private static $allowed_children = array(
	    "FormPage"	
	);
	static $defaults = array(
        'ShowInMenus' => false
    );
}

class FormHolderController extends Page_Controller{
    
}
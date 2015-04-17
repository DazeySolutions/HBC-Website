<?php

class FormPage extends UserDefinedForm {
    private static $icon = "mysite/images/icon/form.png";
    private static $allowed_children = array(
	);	
	public function AngularController(){
	    return "FormPageController";
	}
	
	private static $can_be_root = false;
	
	private static $show_in_sitetree = false;
}

class FormPage_Controller extends UserDefinedForm_Controller{

	private static $allowed_actions = array (
			'ajax'
			);
	public function ajax() {
		return $this->renderWith('AngularForm');
	}	
}

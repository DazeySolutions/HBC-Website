<?php

class CustomUserDefinedForm extends UserDefinedForm {
    private static $icon = "mysite/images/icon/form.png";
    private static $allowed_children = array(
	);	
	public function AngularController(){
	    return "FormPageController";
	}
}

class CustomUserDefinedForm_Controller extends UserDefinedForm_Controller{

	private static $allowed_actions = array (
			'ajax'
			);
	public function ajax() {
		return $this->renderWith('AngularForm');
	}	
}

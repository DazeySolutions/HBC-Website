<?php

class CustomUserDefinedForm extends UserDefinedForm {
    private static $allowed_children = array(
			"*Page",
			"CustomUserDefinedForm",
			"CustomPage",
			"HomePage",
			"Blog",
			"BlogPost",
			"RedirectorPage"	
			);	
}

class CustomUserDefinedForm_Controller extends UserDefinedForm_Controller{

	private static $allowed_actions = array (
			'ajax'
			);
	public function ajax() {
		return $this->renderWith('AngularForm');
	}	
}

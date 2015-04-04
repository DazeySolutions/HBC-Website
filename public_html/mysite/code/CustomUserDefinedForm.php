<?php

class CustomUserDefinedForm extends UserDefinedForm {

}

class CustomUserDefinedForm_Controller extends UserDefinedForm_Controller{

	private static $allowed_actions = array (
			'ajax'
			);
	public function ajax() {
		return $this->renderWith('AngularForm');
	}	
}

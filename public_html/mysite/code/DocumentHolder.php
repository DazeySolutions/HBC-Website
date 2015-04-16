<?php

class DocumentHolder extends Page {
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
	    return "DocumentHolderController";
	}
}

class DocumentHolder_Controller extends Page_Controller{
    
}
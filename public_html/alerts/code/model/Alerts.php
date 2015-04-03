<?php

class Alerts extends DataObject {
	private static $db = array(
		'Title' => 'Text',
		'Description' => 'Text',
		'Severity'=>'Text',
		'Start'=>'Date',
		'End'=>'Date'
	);
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","Severity");
		$fields->addFieldToTab("Root.Main", new DropdownField("Severity","Severity",array('success'=>'info','info'=>'low','warning'=>'medium','danger'=>'high')));
		return $fields;
	}
	private static $summary_fields = array(
		'Title' => 'Title',
		'Description'=>'Description',
		'Start'=>'Start',
		'End'=>'End'
	);
}

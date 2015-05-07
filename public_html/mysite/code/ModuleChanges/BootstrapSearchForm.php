<?php

class BootstrapSearchForm extends SearchForm {


	public function __construct($controller = null, $name = null, $fields = null, $actions = null, $checkCurrentUser = true) {
		if(!$controller) $controller = Controller::curr();
		if(!$name) $name = "SearchForm";
		parent::__construct($controller, $name, $fields, $actions, $checkCurrentUser);
		$this->Fields()->bootstrapify();
		$this->Actions()->bootstrapify();
		$this->setTemplate("BootstrapForm");

		$this->invokeWithExtensions('updateBoostrapSearchForm', $this);
	}

}

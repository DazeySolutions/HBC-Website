<?php
class BootstrapLoginForm extends MemberLoginForm {
	public function __construct($controller = null, $name = null, $fields = null, $actions = null, $checkCurrentUser = true) {
		if(!$controller) $controller = Controller::curr();
		if(!$name) $name = "LoginForm";
		parent::__construct($controller, $name, $fields, $actions, $checkCurrentUser);
		$label=singleton('Member')->fieldLabel(Member::config()->unique_identifier_field);
		$emailField = new EmailField("Email", $label, null, null, $this);
		$this->Fields()->replaceField("Email", $emailField);
		$this->Fields()->bootstrapify();
		$actionSubmit = new BootstrapFormAction('dologin', _t('Member.BUTTONLOGIN', "Log in"))->setStyle('primary');
		$actionSubmit->setSize('lg');
		$this->Actions()->replaceField('dologin', $actionSubmit);
		$this->Actions()->bootstrapify();
		$this->setTemplate("BootstrapForm");
		$this->invokeWithExtensions('updateBoostrapMemberLoginForm', $this);
	}
}
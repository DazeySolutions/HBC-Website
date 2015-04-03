<?php

/**
 * @package siteconfig
 */
class AlertsLeftAndMain extends LeftAndMain {

	/**
	 * @var string
	 */
	private static $url_segment = 'alerts';

	/**
	 * @var string
	 */
	private static $url_rule = '/$Action/$ID/$OtherID';

	/**
	 * @var int
	 */
	private static $menu_priority = -1;

	/**
	 * @var string
	 */
	private static $menu_title = 'Alerts';

	/**
	 * @var string
	 */
	private static $tree_class = 'Alerts';

	/**
	 * @var array
	 */
	private static $required_permission_codes = array('EDIT_SITECONFIG');


	public function getResponseNegotiator() {
		$neg = parent::getResponseNegotiator();

		$controller = $this;

		$neg->setCallback('CurrentForm', function() use(&$controller) {
			return $controller->renderWith($controller->getTemplatesWithSuffix('_Content'));
		});

		return $neg;
	}

	/**
	 * @param null $id Not used.
	 * @param null $fields Not used.
	 *
	 * @return Form
	 */
	public function getEditForm($id = null, $fields = null) {
		$alerts = AlertsConfig::current_alerts_config();
		$fields = $alerts->getCMSFields();

		// Tell the CMS what URL the preview should show
		$home = Director::absoluteBaseURL();
		$fields->push(new HiddenField('PreviewURL', 'Preview URL', $home));

		// Added in-line to the form, but plucked into different view by LeftAndMain.Preview.js upon load
		$fields->push($navField = new LiteralField('SilverStripeNavigator', $this->getSilverStripeNavigator()));
		$navField->setAllowHTML(true);

		$actions = $alerts->getCMSActions();
		$form = CMSForm::create( 
			$this, 'EditForm', $fields, $actions
		)->setHTMLID('Form_EditForm');
		$form->setResponseNegotiator($this->getResponseNegotiator());
		$form->addExtraClass('cms-content center cms-edit-form');
		// don't add data-pjax-fragment=CurrentForm, its added in the content template instead

		if($form->Fields()->hasTabset()) $form->Fields()->findOrMakeTab('Root')->setTemplate('CMSTabSet');
		$form->setHTMLID('Form_EditForm');
		$form->loadDataFrom($alerts);
		$form->setTemplate($this->getTemplatesWithSuffix('_EditForm'));

		// Use <button> to allow full jQuery UI styling
		$actions = $actions->dataFields();
		if($actions) foreach($actions as $action) $action->setUseButtonTag(true);

		$this->extend('updateEditForm', $form);

		return $form;
	}

	/**
	 * Used for preview controls, mainly links which switch between different states of the page.
	 *
	 * @return ArrayData
	 */
	public function getSilverStripeNavigator() {
		return $this->renderWith('CMSSettingsController_SilverStripeNavigator');
	}

	/**
	 * Save the current sites {@link SiteConfig} into the database.
	 *
	 * @param array $data 
	 * @param Form $form 
	 * @return String
	 */
	public function save_alerts($data, $form) {
		$alerts = AlertsConfig::current_alerts_config();
		$form->saveInto($alerts);
		
		try {
			$alerts->write();
		} catch(ValidationException $ex) {
			$form->sessionMessage($ex->getResult()->message(), 'bad');
			return $this->getResponseNegotiator()->respond($this->request);
		}
		
		$this->response->addHeader('X-Status', rawurlencode(_t('LeftAndMain.SAVEDUP', 'Saved.')));

		return $this->getResponseNegotiator()->respond($this->request);
	}
	

	public function Breadcrumbs($unlinked = false) {
		$defaultTitle = self::menu_title_for_class(get_class($this));

		return new ArrayList(array(
			new ArrayData(array(
				'Title' => _t("{$this->class}.MENUTITLE", $defaultTitle),
				'Link' => false
			))
		));
	}
}

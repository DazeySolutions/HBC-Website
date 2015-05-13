<?php

class CustomSiteConfig extends DataExtension {
	
	private static $has_one = array(	
		"Logo" => "Image"
	);
	
	private static $db = array(
	    'FooterContent'=>'HTMLText',
	    'ConnectionContent'=>'HTMLText',
	);
	

	/**
	 * Get the fields that are sent to the CMS. In
	 * your extensions: updateCMSFields($fields)
	 *
	 * @return FieldList
	 */
	public function updateCMSFields(FieldList $fields) {
		$uploadField = new FileAttachmentField('Logo', 'Logo:');
		$uploadField->setAllowedFileCategories('image');
		$uploadField->setFolderName('Brand-Folder');
		$uploadField->setMultiple(false);
		$uploadField->setView('grid');
		$fields->addFieldToTab("Root.Content",$uploadField);
		
		$footerField = new HTMLEditorField('FooterContent', "Footer");
		$connectionField = new HTMLEditorField('ConnectionContent', "Social");
		$fields->addFieldToTab("Root.Content", $connectionField);
		$fields->addFieldToTab("Root.Content", $footerField);

	}
	
}

class CustomSecurityExtension extends Extension {

  public function updateEditForm($form) {
   	
	$gf = $form->Fields()->fieldByName('Root.Users.Members');
	$tab = $form->Fields()->fieldByName('Root.Users');
	$form->Fields()->addFieldToTab("Root.Users", new LiteralField('Title',"<h2><i class='fa fa-fw fa-2x fa-user'></i>&nbsp;Users</h2>"),"Members");
	$tab->addExtraClass('fa');
	$tab->addExtraClass('fa-lg');
	$tab->addExtraClass('fa-user');
  	$gfConfig = $gf->getConfig();
	$gfConfig->removeComponentsByType('GridFieldAddNewButton');
	$gfConfig->removeComponentsByType('GridFieldPageCount');
	$gfConfig->addComponent($addButton = new GridFieldAddNewButton('toolbar-header-right'));
	$addButton->setButtonName('New User');
	
	$gfG = $form->Fields()->fieldByName('Root.Groups.Groups');
	$tabG = $form->Fields()->fieldByName('Root.Groups');
	$form->Fields()->addFieldToTab("Root.Groups", new LiteralField('Title',"<h2><i class='fa fa-fw fa-2x fa-users'></i>&nbsp;Groups</h2>"),"Groups");
	$tabG->addExtraClass('fa');
	$tabG->addExtraClass('fa-lg');
	$tabG->addExtraClass('fa-users');
  	$gfgConfig = $gfG->getConfig();
	$gfgConfig->removeComponentsByType('GridFieldAddNewButton');
	$gfgConfig->removeComponentsByType('GridFieldPageCount');
	$gfgConfig->addComponent($addGButton = new GridFieldAddNewButton('toolbar-header-right'));
	$addGButton->setButtonName('New Group');
	
    $gfR = $form->Fields()->fieldByName('Root.Roles.Roles');
    $tabR = $form->Fields()->fieldByName('Root.Roles');
    $form->Fields()->addFieldToTab("Root.Roles", new LiteralField('Title',"<h2><i class='fa fa-fw fa-2x fa-user-secret'></i>&nbsp;Roles</h2>"),"Roles");
	$tabR->addExtraClass('fa');
	$tabR->addExtraClass('fa-lg');
	$tabR->addExtraClass('fa-user-secret');
  	$gfrConfig = $gfR->getConfig();
	$gfrConfig->removeComponentsByType('GridFieldAddNewButton');
	$gfrConfig->removeComponentsByType('GridFieldPageCount');
	$gfrConfig->addComponent($addRButton = new GridFieldAddNewButton('toolbar-header-right'));
	$addRButton->setButtonName('New Role');
	
  }

}

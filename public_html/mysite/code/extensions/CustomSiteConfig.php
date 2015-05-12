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
		$uploadField = new UploadField('Logo', 'Logo:');
		$uploadField->setAllowedFileCategories('image');
		$uploadField->setFolderName('Brand-Folder');
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
  	$gfConfig = $gf->getConfig();
	$gfConfig->removeComponentsByType('GridFieldAddNewButton');
	$gfConfig->removeComponentsByType('GridFieldPageCount');
	$gfConfig->addComponent($addButton = new GridFieldAddNewButton('toolbar-header-right'));
	$addButton->setButtonName('New User');
	
	$gfG = $form->Fields()->fieldByName('Root.Users.Groups');
  	$gfgConfig = $gfG->getConfig();
	$gfgConfig->removeComponentsByType('GridFieldAddNewButton');
	$gfgConfig->removeComponentsByType('GridFieldPageCount');
	$gfgConfig->addComponent($addGButton = new GridFieldAddNewButton('toolbar-header-right'));
	$addGButton->setButtonName('New Group');
	
    $gfR = $form->Fields()->fieldByName('Root.Users.Roles');
  	$gfrConfig = $gfR->getConfig();
	$gfrConfig->removeComponentsByType('GridFieldAddNewButton');
	$gfrConfig->removeComponentsByType('GridFieldPageCount');
	$gfgronfig->addComponent($addGButton = new GridFieldAddNewButton('toolbar-header-right'));
	$addGButton->setButtonName('New Role');
	
  }

}

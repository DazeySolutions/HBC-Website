<?php

class CustomSiteConfig extends DataExtension {
	
	private static $has_one = array(	
		"Logo" => "Image"
	);
	
	private static $db = array(
	    'FooterContent'=>'HTMLText',
	    'ConnectionContent'=>'HTMLText',
	    "HeaderColor"=>"Varchar",
		"HeaderTextColor"=>"Varchar",
		"BackgroundOneColor"=>"Varchar",
		"TextOneColor"=>"Varchar",
		"BackgroundTwoColor"=>"Varchar",
		"TextTwoColor"=>"Varchar"
	);
	
	public function onBeforeWrite(){
	    $txt =      "@odd:          ".$this->owner->BackgroundOneColor.";\n";
	    $txt +=     "@even:         ".$this->owner->BackgroundTwoColor.";\n";
	    $txt +=     "@header        ".$this->owner->HeaderColor.";\n";
	    $txt +=     "@odd-text      ".$this->owner->TextOneColor.";\n";
	    $txt +=     "@even-text     ".$this->owner->TextTwoColor.";\n";
	    $txt +=     "@header-text   ".$this->owner->HeaderTextColor.";\n";
	    $myfile =   fopen("/home/hbc/web/site/themes/custom/src/less/colors.less", "w");
	    fwrite($myfile, $txt);
	    fclose($myfile);
	    exec("/home/hbc/web/site/themes/custom/buildless.sh");
	}
	
	/**
	 * Get the fields that are sent to the CMS. In
	 * your extensions: updateCMSFields($fields)
	 *
	 * @return FieldList
	 */
	public function updateCMSFields(FieldList $fields) {
	    $fields->insertBefore(new Tab("Root.Content", "Content"), "Root.Access");
	    $fields->insertBefore(new Tab("Root.Color", "Color"), "Root.Access");
	    $uploadField = new FileAttachmentField('Logo', 'Logo:');
		$uploadField->setAcceptedFiles(array('jpg','JPG','png','gif','bmp'));
		$uploadField->setFolderName('Brand-Folder');
		$uploadField->setMultiple(false);
		$uploadField->setView('grid');
		$fields->addFieldToTab("Root.Content",$uploadField);
		$hGroup = new FieldGroup(
		    new ColorField("HeaderColor", "Background Color"),
		    new ColorField("HeaderTextColor", "Text Color")
		);
		$hGroup->setTitle("Header");
		$oGroup = new FieldGroup(
		    new ColorField("BackgroundOneColor", "Background Color"),
		    new ColorField("TextOneColor", "Text Color")
		);
		$oGroup->setTitle("Content Section (odd)");
		$eGroup = new FieldGroup(
		    new ColorField("BackgroundTwoColor", "Background Color"),
		    new ColorField("TextTwoColor", "Text Color")
		);
		$eGroup->setTitle("Content Section (even)");
		$fields->addFieldToTab("Root.Color",$hGroup);
		$fields->addFieldToTab("Root.Color",$eGroup);
		$fields->addFieldToTab("Root.Color",$oGroup);
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

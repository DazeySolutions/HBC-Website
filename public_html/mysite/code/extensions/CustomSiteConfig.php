<?php

class CustomSiteConfig extends DataExtension {
	
	private static $has_one = array(	
		"Logo" => "Image"
	);
	
	private static $db = array(
	    'FooterContent'=>'HTMLText',
	    'ConnectionContent'=>'HTMLText',
	    "HeaderColor"=>"Color",
		"HeaderTextColor"=>"Color",
		"HeaderLinkColor"=>"Color",
		"HeaderActiveLinkColor"=>"Color",
		"BackgroundOneColor"=>"Color",
		"TextOneColor"=>"Color",
		"LinkOneColor"=>"Color",
		"ActiveLinkOneColor"=>"Color",
		"BackgroundTwoColor"=>"Color",
		"TextTwoColor"=>"Color",
		"LinkTwoColor"=>"Color",
		"ActiveLinkTwoColor"=>"Color"
	);
	
	public function onBeforeWrite(){
	    $txt =      "@odd:                  #".$this->owner->BackgroundOneColor->HEX().";\n";
	    $txt .=     "@even:                 #".$this->owner->BackgroundTwoColor->HEX().";\n";
	    $txt .=     "@header:               #".$this->owner->HeaderColor->HEX().";\n";
	    $txt .=     "@odd-text:             #".$this->owner->TextOneColor->HEX().";\n";
	    $txt .=     "@even-text:            #".$this->owner->TextTwoColor->HEX().";\n";
	    $txt .=     "@header-text:          #".$this->owner->HeaderTextColor->HEX().";\n";
	    $txt .=     "@odd-link:             #".$this->owner->LinkOneColor->HEX().";\n";
	    $txt .=     "@even-link:            #".$this->owner->LinkTwoColor->HEX().";\n";
	    $txt .=     "@header-link:          #".$this->owner->HeaderLinkColor->HEX().";\n";
	    $txt .=     "@odd-link-active:      #".$this->owner->ActiveLinkOneColor->HEX().";\n";
	    $txt .=     "@even-link-active:     #".$this->owner->ActiveLinkTwoColor->HEX().";\n";
	    $txt .=     "@header-link-active:   #".$this->owner->HeaderActiveLinkColor->HEX().";\n";
	    
	    $myfile =   fopen("/home/hbc/web/site/themes/custom/src/less/colors.less", "w");
	    fwrite($myfile, $txt);
	    fclose($myfile);
	    $output = array();
	    exec("whoami && cd /home/hbc/web/site/themes/custom/ && grunt less" , $output);
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
		    new ColorField("HeaderTextColor", "Text Color"),
		    new ColorField("HeaderActiveLinkColor", "Active Link Color"),
		    new ColorField("HeaderLinkColor", "Link Color")
		);
		$hGroup->setTitle("Header");
		$oGroup = new FieldGroup(
		    new ColorField("BackgroundOneColor", "Background Color"),
		    new ColorField("TextOneColor", "Text Color"),
		    new ColorField("ActiveLinkOneColor", "Active Link Color"),
		    new ColorField("LinkOneColor", "Link Color")
		);
		$oGroup->setTitle("Content Section (odd)");
		$eGroup = new FieldGroup(
		    new ColorField("BackgroundTwoColor", "Background Color"),
		    new ColorField("TextTwoColor", "Text Color"),
		    new ColorField("ActiveLinkTwoColor", "Active Link Color"),
		    new ColorField("LinkTwoColor", "Link Color")
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

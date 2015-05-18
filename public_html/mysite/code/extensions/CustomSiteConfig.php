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
	    $txt =      "@odd:                  #".substr($this->owner->BackgroundOneColor, 0, 6).";\n";
	    $txt .=     "@even:                 #".substr($this->owner->BackgroundTwoColor, 0, 6).";\n";
	    $txt .=     "@header:               #".substr($this->owner->HeaderColor, 0, 6).";\n";
	    $txt .=     "@odd-text:             #".substr($this->owner->TextOneColor, 0, 6).";\n";
	    $txt .=     "@even-text:            #".substr($this->owner->TextTwoColor, 0, 6).";\n";
	    $txt .=     "@header-text:          #".substr($this->owner->HeaderTextColor, 0, 6).";\n";
	    $txt .=     "@odd-link:             #".substr($this->owner->LinkOneColor, 0, 6).";\n";
	    $txt .=     "@even-link:            #".substr($this->owner->LinkTwoColor, 0, 6).";\n";
	    $txt .=     "@header-link:          #".substr($this->owner->HeaderLinkColor, 0, 6).";\n";
	    $txt .=     "@odd-link-active:      #".substr($this->owner->ActiveLinkOneColor, 0, 6).";\n";
	    $txt .=     "@even-link-active:     #".substr($this->owner->ActiveLinkTwoColor, 0, 6).";\n";
	    $txt .=     "@header-link-active:   #".substr($this->owner->HeaderActiveLinkColor, 0, 6).";\n";
	    
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
	    
	    $hbc =  new ColorField("HeaderColor", "Background Color");
	    $htc =  new ColorField("HeaderTextColor", "Text Color");
	    $hac =  new ColorField("HeaderActiveLinkColor", "Active Link Color");
	    $hlc =  new ColorField("HeaderLinkColor", "Link Color");
	    
	    $obc =  new ColorField("BackgroundOneColor", "Background Color");
	    $otc =  new ColorField("TextOneColor", "Text Color");
	    $oac =  new ColorField("ActiveLinkOneColor", "Active Link Color");
	    $olc =  new ColorField("LinkOneColor", "Link Color");
		
		$ebc =  new ColorField("BackgroundTwoColor", "Background Color");
	    $etc =  new ColorField("TextTwoColor", "Text Color");
	    $eac =  new ColorField("ActiveLinkTwoColor", "Active Link Color");
	    $elc =  new ColorField("LinkTwoColor", "Link Color");
		
		$fields->addFieldToTab("Root.Color.Header",$hbc);
		$fields->addFieldToTab("Root.Color.Header",$htc);
		$fields->addFieldToTab("Root.Color.Header",$hac);
		$fields->addFieldToTab("Root.Color.Header",$hlc);
		
		$fields->addFieldToTab("Root.Color.ContentSection(odd)",$obc);
		$fields->addFieldToTab("Root.Color.ContentSection(odd)",$otc);
		$fields->addFieldToTab("Root.Color.ContentSection(odd)",$oac);
		$fields->addFieldToTab("Root.Color.ContentSection(odd)",$olc);
		
        $fields->addFieldToTab("Root.Color.ContentSection(even)",$ebc);
		$fields->addFieldToTab("Root.Color.ContentSection(even)",$etc);
		$fields->addFieldToTab("Root.Color.ContentSection(even)",$eac);
		$fields->addFieldToTab("Root.Color.ContentSection(even)",$elc);
		
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

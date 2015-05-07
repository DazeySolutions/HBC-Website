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

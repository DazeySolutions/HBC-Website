<?php
class DocumentPage extends DataObject {
    private static $db = array(
        'Date'=>'SS_Datetime'
	);
    private   static $extensions = array(
        "Versioned('Stage', 'Live')"
    );
	private static $has_one = array(
	    'Document'=>'File',
	    'DocumentHolder'=>'DocumentHolder'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","PageID");
		$fields->removeFieldFromTab("Root.Main","DocumentHolderID");
		$fields->removeFieldFromTab("Root.Main","Document");
        $fields->addFieldToTab("Root.Main", $uploadField = UploadField::create("Document", "Document"));
        $uploadField->setAllowedExtensions("pdf");
        $uploadField->setFolderName("Uploads/Documents/".$this->getDocFolder());
		return $fields;
	}
	 public function getDocFolder()
      {       
          if ( $this->DocumentHolderID )
          {
            $doc = $this->DocumentHolder();
            $filter = new URLSegmentFilter();
            return $filter->filter( $doc->DocumentType );
          }
          else{
            return 'default';
          }
    
      }

	private static $summary_fields = array(
		'Document.Filename'=>'File',
		'Date'=>'Date'
	);
}

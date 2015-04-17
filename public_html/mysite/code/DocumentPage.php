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
		$fields->removeFieldFromTab("Root.Main","Document");
        $fields->addFieldToTab("Root.Main", $uploadField = UploadField::create("Document", "Document"));
        $uploadField->setAllowedExtensions("pdf");
        $uploadField->setFolderName("Uploads/Documents/".$this->getDocFolder());
		return $fields;
	}
	 public function getDocFolder()
      {       
           $parentID = Session::get('CMSMain')['currentPage'];

          if ( $parentID )
          {
            $gallery = Page::get()->byID( $parentID );
            $filter = new URLSegmentFilter();
            return $filter->filter( $gallery->Title );
          }
          else{
            return 'default';
          }
    
      }
    public function getDocYear(){
        return $this->Date().Year();
    }
    public function getDocMonth(){
        return $this->Date()->Month();
    }
    public function getDocDay(){
        return $this->Date()->Day();
    }
	private static $summary_fields = array(
		'Document.Filename'=>'File',
		'Date'=>'Date'
	);
}

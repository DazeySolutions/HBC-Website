<?php

class MyMember extends DataExtension {
  /**

   * Modify the field set to be displayed in the CMS detail pop-up
   */
    public function updateCMSFields(FieldList $fields) {
        $ftpField = new TextField('ftpUser', 'FTP User Name');
        $eventField = new TextField('eventsUser', 'Events User Name');
		$fields->addFieldToTab("Root.OtherAccounts",$ftpField);
		$fields->addFieldToTab("Root.OtherAccounts",$eventField);
    }

    // define additional properties
    private static $db = array(
        'ftpUser'=>'Text',
        'eventsUser'=>'Text'
        ); 
    private static $has_one = array(); 
    private static $has_many = array(); 
    private static $many_many = array(); 
    private static $belongs_many_many = array(); 

}
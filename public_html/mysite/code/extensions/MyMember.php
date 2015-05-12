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
		$group = DataObject::get_one("Group", "Code = 'employees'");
		if($this->owner->inGroup($group->ID)){
            $titleField = new TextField('EmployeeTitle', 'Title');
            $detailField = new TextareaField('EmployeeDetail', 'About');
            $detailField->setColumns(40);
            $detailField->setRows(10);
            $orderField = new NumericField('EmployeeOrder', 'Display Order');
            $orderField->setRightTitle("In the event of a tie will be listed alpahbetically");
            $field->addFieldToTab("Root.Employee", $titleField);
            $field->addFieldToTab("Root.Employee", $detailField);
            $field->addFieldToTab("Root.Employee", $orderField);
		}
    }

    // define additional properties
    private static $db = array(
        'ftpUser'=>'Text',
        'eventsUser'=>'Text',
        'EmployeeTitle'=>'Text',
        'EmployeeOrder'=>'Int',
        'EmployeeDetail'=>'Text'
        ); 
    private static $has_one = array(); 
    private static $has_many = array(); 
    private static $many_many = array(); 
    private static $belongs_many_many = array(); 

    public static function currentMemberFTP(){
        $id = Member::currentUserID();
        if($id) {
            return DataObject::get_one("Member", "\"Member\".\"ID\" = $id", true, 1)->ftpUser;
        }
    }

}
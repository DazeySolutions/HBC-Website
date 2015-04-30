<?php

class FormPage extends UserDefinedForm {
    private static $db = array(
        'ButtonStyle'=>'Varchar'
    );
    private static $icon = "mysite/images/icon/form.png";
    private static $allowed_children = array(
	);	
	public function AngularController(){
	    return "FormPageController";
	}
	public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fGroup = new DropdownField('ButtonStyle', 'Select Button Style', array('primary'=>'Primary','success'=>'Success','danger'=>'Danger','warning'=>'Warning','default'=>'Default'));
        $preview = new LiteralField('sylevisual','Preview Styles');
        $preview->setContent("<div style='
                                          color: #999;
                                          border: 1px solid #ddd;
                                          background: #d0d0d0;
                                          overflow: hidden;
                                          width: 100%;'>
                                <h2 style='float: left;  margin-left: 10px; margin-right: 5px;'>Preview</h2>
                                <div style='margin: 12px 5px;
                                            color: #ffffff;
                                            background-color: #5cb85c; 
                                            border-color: #4cae4c; 
                                            text-align: center;
                                            display:inline-block;
                                            padding: 8px;'>
                                            Success
                                </div>
                                <div style='margin: 12px 5px;
                                            color: #ffffff;
                                            background-color: #337ab7; 
                                            border-color: #2e6da4; 
                                            text-align: center;
                                            display:inline-block;
                                            padding: 8px;'>
                                            Primary
                                </div>
                                <div style='margin: 12px 5px;
                                            color: #ffffff;
                                            background-color: #d9534f; 
                                            border-color: #d43f3a; 
                                            text-align: center;
                                            display:inline-block;
                                            padding: 8px;'>
                                            Danger
                                </div>
                                <div style='margin: 12px 5px;
                                            color: #ffffff;
                                            background-color: #f0ad4e; 
                                            border-color: #eea236; 
                                            text-align: center;
                                            display:inline-block;
                                            padding: 8px;'>
                                            Warning
                                </div>
                                <div style='margin: 12px 5px;
                                            color: #333333;
                                            background-color: #ffffff; 
                                            border-color: #cccccc; 
                                            text-align: center;
                                            display:inline-block;
                                            padding: 8px;'>
                                            Default
                                </div>
                            </div>");
        $fields->addFieldToTab("Root.FormContent", $fGroup);
        $fields->addFieldToTab("Root.FormContent", $preview);
        return $fields;
    }
	private static $can_be_root = false;
	
	private static $show_in_sitetree = false;
}

class FormPage_Controller extends UserDefinedForm_Controller{

	private static $allowed_actions = array (
			'ajax'
			);
	public function ajax() {
		return $this->renderWith('AngularForm');
	}	

    public function getFormActions() {                                                                                                                                                                
        $submitText = ($this->SubmitButtonText) ? $this->SubmitButtonText : _t('UserDefinedForm.SUBMITBUTTON', 'Submit');                                                                             
        $clearText = ($this->ClearButtonText) ? $this->ClearButtonText : _t('UserDefinedForm.CLEARBUTTON', 'Clear');                                                                                  

        $actions = new FieldList(                                                                                                                                                                     
            $submit = new FormAction("process", $submitText)
        );                                                                                                                                                                                            
        $submit->setStyle($this->ButtonStyle); 
 
        if($this->ShowClearButton) {                                                                                                                                                                  
            $actions->push(new ResetFormAction("clearForm", $clearText));
        }

        $this->extend('updateFormActions', $actions);                                                                                                                                                 
        return $actions;                                                                                                                                                                              

    }      

    public function Form() {
        $fields = $this->getFormFields();
        if(!$fields || !$fields->exists()) return false;

        $actions = $this->getFormActions();
 
        // get the required fields including the validation
        $required = $this->getRequiredFields();

        // generate the conditional logic 
        $this->generateConditionalJavascript();
 
        $form = new BootstrapForm($this, "Form", $fields, $actions, $required);
        $form->setRedirectToFormOnValidationError(true);
        $data = Session::get("FormInfo.{$form->FormName()}.data");

        if(is_array($data)) $form->loadDataFrom($data);

        $this->extend('updateForm', $form);
 
        if($this->DisableCsrfSecurityToken) {
            $form->disableSecurityToken();
        }

        return $form;
    }
}

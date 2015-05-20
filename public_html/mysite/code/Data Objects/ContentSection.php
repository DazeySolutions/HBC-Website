<?php

class ContentSection extends DataObject{
	private static $db = array(
		'SortOrder' => 'Int',
        'Title' => 'Varchar',
		'Content' => 'HTMLText',
		'Column2Title' => 'Varchar',
		'Column2Content' => 'HTMLText',
		'Column3Title' => 'Varchar',
		'Column3Content' => 'HTMLText'
	);
    private  static $extensions = array(
        "Versioned('Stage', 'Live')"
    );
	private static $has_one = array(
		"ContentPage"=>"ContentPage"
	);
	public function getCMSFields(){
		$fields = new FieldList(new TabSet("Root", new Tab("ColumnOne", "Column One")));
		$fields->removeFieldFromTab("Root", "Main");
		$fields->addFieldToTab("Root.ColumnOne",new TextField("Title","Title"));
		$fields->addFieldToTab("Root.ColumnOne",new HtmlEditorField("Content","Content"));
        return $fields;
	}
	
	private static $summary_fields = array(
		'Title'=>'ColumnOne',
		'Column2Title'=>'ColumnTwo',
		'Column3Title'=>'ColumnThree'
	);
	
	public function canCreate($member = null){
	    if(Permission::check('SITETREE_EDIT_ALL')){
            return true;  
        } 
        else if(Permission::check('PAGE_ADD_CONTENT_BUTTONS')){
            return true;  
        }
        else{
            return false;
        }
	}
	
	public function canEdit($member = null){
	    if(Permission::check('SITETREE_EDIT_ALL')){
            return true;  
        } 
        else if(Permission::check('PAGE_ADD_CONTENT_BUTTONS')){
            return true;  
        }
        else{
            return false;
        }
	}
    
    public function canView($member = null){
        if(Permission::check('SITETREE_VIEW_ALL')){
            return true;  
        } else{
            return false;
        }
	}
}

class ContentSectionTwoColumn extends ContentSection{
    
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.ColumnTwo",new TextField("Column2Title","Title"));
		$fields->addFieldToTab("Root.ColumnTwo",new HtmlEditorField("Column2Content","Content"));
        
        return $fields;
	}
}

class ContentSectionThreeColumn extends ContentSectionTwoColumn{
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.ColumnThree",new TextField("Column3Title","Title"));
		$fields->addFieldToTab("Root.ColumnThree",new HtmlEditorField("Column3Content","Content"));

        return $fields;
	}
}
<?php
class ContentPage extends SiteTree implements PermissionProvider {
    private static $icon = "mysite/images/icon/page.png";
	private static $db = array(
	    "ImagePath"=>"Varchar",
	    "OverrideImagePath"=>"Boolean"
	);
    
	private static $has_many = array(
		'SlideShowImages' => 'SlideShowImage',
		'ContentSections' => 'ContentSection'
	);

	private static $has_one = array(
	);

    private static $allowed_children = array(
		"ContentPage"
	);	
    public function onBeforeWrite(){
        parent::onBeforeWrite();
        if(!$this->OverrideImagePath){
            if((!$this->ImagePath || $this->ImagePath == 'new-page') && $this->URLSegment){
                $this->ImagePath = $this->URLSegment;
            }else if($this->isChanged('URLSegment', 2)){
                $this->ImagePath = $this->URLSegment;
            }
        }
        
    }
    public function doPublish(){
        $retval = parent::doPublish();
        foreach($this->SlideShowImages() as $page){
            $page->publish('Stage', 'Live');
        }
        foreach($this->ContentSections() as $page){
            $page->publish('Stage', 'Live');
        }
        return $retval;
    }
    function getSettingsFields() {
        $fields = parent::getSettingsFields();
        $fieldGroup = new FieldGroup(
            new CheckboxField('OverrideImagePath', 'Override Default Image Path?'),
            new TextField('ImagePath', 'Path to page containing images: (Base path ex. home)')
        );
        $fieldGroup->setTitle("Header Image Settings");
        $fieldGroup->setName("ImagePathSettings");
        $fields->addFieldToTab("Root.Settings", $fieldGroup);
        return $fields;
    }
    
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		
		$gridFieldConfig2 = new GridFieldConfig();
        //$gridFieldConfig2->addComponent(new GridFieldButtonRow('before'));
        $gridFieldConfig2->addComponent($addButton = new GridFieldAddNewButton('toolbar-header-right'));
        $addButton->setButtonName("New");
        $gridFieldConfig2->addComponent(new GridFieldToolbarHeader());
		$gridFieldConfig2->addComponent(new GridFieldDataColumns());
		$gridFieldConfig2->addComponent(new GridFieldEditButton());
 		$gridFieldConfig2->addComponent(new GridFieldDeleteAction());
		$gridFieldConfig2->addComponent($pagination = new GridFieldPaginator(10));
		$gridFieldConfig2->addComponent(new GridFieldDetailForm());
		$gridFieldConfig2->addComponent(new GridFieldSortableRows('SortOrder'));
		
		
		$gridFieldConfig = new GridFieldConfig();
        $gridFieldConfig->addComponent($addButton2 = new GridFieldAddNewMultiClass('toolbar-header-right'));
        $addButton2->setTitle("New");
        $gridFieldConfig->addComponent(new GridFieldToolbarHeader());
		$gridFieldConfig->addComponent(new GridFieldDataColumns());
		$gridFieldConfig->addComponent(new GridFieldEditButton());
 		$gridFieldConfig->addComponent(new GridFieldDeleteAction());
		$gridFieldConfig->addComponent($pagination = new GridFieldPaginator(10));
		$gridFieldConfig->addComponent(new GridFieldDetailForm());
		$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
		
		$gridFieldSlideShowImages = new GridField("SlideShowImages", "Background Slides", $this->SlideShowImages()->sort("SortOrder"), $gridFieldConfig2);
		$gridFieldContentSections = new GridField("ContentSections", "Page Content Sections", $this->ContentSections()->sort("SortOrder"), $gridFieldConfig);
        
        if(!Permission::check("PAGE_ADD_BACKGROUND_BUTTONS")){
		    $gridFieldConfig2->removeComponentsByType('GridFieldAddNewButton');
		}
        
		if(!Permission::check("PAGE_ADD_CONTENT_BUTTONS")){
		    $gridFieldConfig->removeComponentsByType('GridFieldAddNewButton');
		}
		
		$fields->addFieldToTab("Root.Main", $gridFieldContentSections, 'Content');
		$fields->addFieldToTab("Root.Main", $gridFieldSlideShowImages, 'Content');

		$fields->removeFieldFromTab("Root.Main", 'Content');
		return $fields;
	}
	
	public function canEdit($member = null){
	    return parent::canEdit($member);
	}
    
    public function canView($member = null){
	    return parent::canView($member);
	}
	
    public function providePermissions() {
        return array(
            'PAGE_ADD_CONTENT_BUTTONS' => array(
                'name' => 'Add content sections to pages',
                'help' => 'Allow adding of content sections to page in the "Pages" section.',
                'category' => 'Content permissions',
                'sort' => 900
            ),
            'PAGE_ADD_BACKGROUND_BUTTONS' => array(
                'name' => 'Add background header images to pages',
                'help' => 'Allow adding of background header images to page in the "Pages" section.',
                'category' => 'Content permissions',
                'sort' => 901
            ),
        );
    }

}

class ContentPage_Controller extends ContentController{

	public function getSlideShowImages(){
		return $this->SlideShowImages()->sort("SortOrder");
	}
	public function getContentSections(){
		return $this->ContentSections()->sort("SortOrder");
	}

	private static $allowed_actions = array (
			'ajax',
			'IMAGES',
			'JSON'
			);

	public function ajax() {
		return $this->renderWith('AngularCPage');
	}
	
	protected function ajaxContent(){
	    if(null !== ($this->ContentSections())){
            return $this->ContentSections()->sort('SortOrder')->toNestedArray();
	    }
	}
	public function IMAGES($request){
	    if(null !== ($this->SlideShowImages())){
	        $width = $request->getVar('width');
	        $imageUrlArray = array();
	        $counter = 0;
	        $images = $this->SlideShowImages()->sort("SortOrder");
	        foreach($images as $bgImage){
	            $imageUrlArray[$counter] = array("image"=>$bgImage->Image()->setWidth($width)->Filename, "link"=>$bgImage->Link, "description"=>$bgImage->Description);
	            $counter++;
	        }
	        $arList = new ArrayList($imageUrlArray);
	        return json_encode($arList->toNestedArray());
	    }else{
	        return json_encode(array());
	    }
	}

    public function JSON(){
        $retval = array();
        $retval["controller"] = "ContentPageController";
        $retval["content"] = $this->ajaxContent();
        $retval["imagepath"] = $this->ImagePath."/IMAGES";
        return json_encode($retval, JSON_FORCE_OBJECT);
    }

	public function init() {
		parent::init();
	}

}
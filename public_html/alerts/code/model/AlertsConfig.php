<?php

/**
 * SiteConfig
 *
 * @property string Title Title of the website.
 * @property string Tagline Tagline of the website.
 * @property string Theme Current theme.
 * @property string CanViewType Type of restriction used for view permissions.
 * @property string CanEditType Type of restriction used for edit permissions.
 * @property string CanCreateTopLevelType Type of restriction used for creation of root-level pages.
 *
 * @method ManyManyList ViewerGroups() List of groups that can view SiteConfig.
 * @method ManyManyList EditorGroups() List of groups that can edit SiteConfig.
 * @method ManyManyList CreateTopLevelGroups() List of groups that can create root-level pages.
 *
 * @package siteconfig
 */
class AlertsConfig extends DataObject implements PermissionProvider, TemplateGlobalProvider {

    private static $db = array(
    );
    private static $has_one = array(    
    );

    private static $many_many = array(
        'Alerts' => 'Alerts'
    );
    
    public function validAlerts() {
        return $this->Alerts()->where("Start >= CURRDATE() AND END <= CURRDATE()")->sort("End DESC");
    }
    /**
     * @config
     *
     * @var array
     */
    private static $disabled_themes = array();
    

    public function populateDefaults() {
        parent::populateDefaults();
    }

    /**
     * Get the fields that are sent to the CMS. 
     *
     * In your extensions: updateCMSFields($fields).
     *
     * @return FieldList
     */
    public function getCMSFields() {
            $gridFieldConfigAlert = GridFieldConfig_RecordEditor::create();
        
        $fields = new FieldList(
            new TabSet("Root",
                $tabMain = new Tab('Main',
                    $gridFieldAlert = new GridField("Alerts", "Alert messages", $this->Alerts(), $gridFieldConfigAlert)
                )
            ),
            new HiddenField('ID')
        );

       	$tabMain->addExtraClass('padding-15'); 
       	$tabMain->addExtraClass('panel-top-border'); 
        if (!Permission::check('EDIT_SITECONFIG')) {
            $fields->makeFieldReadonly($gridFieldAlert);
        }

        if(file_exists(BASE_PATH . '/install.php')) {
            $fields->addFieldToTab("Root.Main", new LiteralField("InstallWarningHeader", 
                "<p class=\"message warning\">" . _t("SiteTree.REMOVE_INSTALL_WARNING", 
                "Warning: You should remove install.php from this SilverStripe install for security reasons.")
                . "</p>"), "Title");
        }
        
        $this->extend('updateCMSFields', $fields);
        
        return $fields;
    }

    
    /**
     * Get the actions that are sent to the CMS. 
     *
     * In your extensions: updateEditFormActions($actions)
     *
     * @return FieldList
     */
    public function getCMSActions() {
        if (Permission::check('ADMIN') || Permission::check('EDIT_SITECONFIG')) {
            $actions = new FieldList(
                $saveBtn = FormAction::create('save_siteconfig', _t('CMSMain.SAVE','Save'))
                    ->addExtraClass('ss-ui-action-constructive')->setAttribute('data-icon', 'accept')
            );
            $saveBtn->addExtraClass('btn');
            $saveBtn->addExtraClass('btn-primary');
            $saveBtn->addExtraClass('col-xs-12');
            $saveBtn->addExtraClass('margin-15');
        } else {
            $actions = new FieldList();
        }
        
        $this->extend('updateCMSActions', $actions);
        
        return $actions;
    }

    /**
     * @return string
     */
    public function CMSEditLink() {
        return singleton('CMSSettingsController')->Link();
    }
    
    /**
     * Get the current sites SiteConfig, and creates a new one through 
     * {@link make_alerts_confgi()} if none is found.
     *
     * @return SiteConfig
     */
    public static function current_alerts_config() {
        if ($siteConfig = DataObject::get_one('AlertsConfig')) return $siteConfig;
        
        return self::make_alerts_confgi();
    }

    /**
     * Setup a default SiteConfig record if none exists.
     */
    public function requireDefaultRecords() {
        parent::requireDefaultRecords();

        $config = DataObject::get_one('AlertsConfig');
        
        if(!$config) {
            self::make_alerts_confgi();

            DB::alteration_message("Added default alerts config","created");
        }
    }
    
    /**
     * Create SiteConfig with defaults from language file.
     * 
     * @return SiteConfig
     */
    public static function make_alerts_confgi() {
        $config = AlertsConfig::create();
        $config->write();

        return $config;
    }

    /**
     * Can a user view pages on this site? This method is only called if a page 
     * is set to Inherit, but there is nothing to inherit from.
     *
     * @param mixed $member 
     *
     * @return boolean
     */
    public function canView($member = null) {
        if(!$member) {
            $member = Member::currentUserID();
        }

        if (!$this->CanViewType || $this->CanViewType == 'Anyone') {
            return true;
        }

        if($member && is_numeric($member)) {
            $member = Member::get()->byId($member);
        }

        if ($member && Permission::checkMember($member, "ADMIN")) {
            return true;
        }
                
        // check for any logged-in users
        if($this->CanViewType == 'LoggedInUsers' && $member) {
            return true;
        }

        // check for specific groups
        if($this->CanViewType == 'OnlyTheseUsers' && $member && $member->inGroups($this->ViewerGroups())) {
            return true;
        }
        
        return false;
    }
    
    /**
     * Can a user edit pages on this site? This method is only called if a page 
     * is set to Inherit, but there is nothing to inherit from.
     *
     * @param mixed $member 
     * @return boolean
     */
    public function canEdit($member = null) {
        if(!$member) {
            $member = Member::currentUserID();
        }
        
        if($member && is_numeric($member)) {
            $member = DataObject::get_by_id('Member', $member);
        }

        if ($member && Permission::checkMember($member, "ADMIN")) {
            return true;
        }

        // check for any logged-in users
        if($member) {
            if(!$this->CanEditType || $this->CanEditType == 'LoggedInUsers') {
                return true;
            }

            // check for specific groups
            if($this->CanEditType == 'OnlyTheseUsers') {
                if($member->inGroups($this->EditorGroups())) {
                    return true;
                }
            }
        }
        
        return false;
    }
    
    /**
     * @return void
     */
    public function providePermissions() {
        return array(
            'EDIT_SITECONFIG' => array(
                'name' => _t('SiteConfig.EDIT_PERMISSION', 'Manage site configuration'),
                'category' => _t('Permissions.PERMISSIONS_CATEGORY', 'Roles and access permissions'),
                'help' => _t('SiteConfig.EDIT_PERMISSION_HELP', 'Ability to edit global access settings/top-level page permissions.'),
                'sort' => 400
            )
        );
    }
    
    /**
     * Can a user create pages in the root of this site?
     *
     * @param mixed $member 
     * @return boolean
     */
    public function canCreateTopLevel($member = null) {
        if(!$member || !(is_a($member, 'Member')) || is_numeric($member)) {
            $member = Member::currentUserID();
        }
        
        if (Permission::check('ADMIN')) {
            return true;
        }

        if ($member && Permission::checkMember($member, "ADMIN")) {
            return true;
        }
        
        // check for any logged-in users
        if($this->CanCreateTopLevelType == 'LoggedInUsers' && $member) {
            return true;
        }
        
        // check for specific groups
        if($member && is_numeric($member)) {
            $member = Member::get()->byId($member);
        }

        if($this->CanCreateTopLevelType == 'OnlyTheseUsers') {
            if($member && $member->inGroups($this->CreateTopLevelGroups())) {
                return true;
            }
        }
        

        return false;
    }

    /**
     * Add $SiteConfig to all SSViewers
     */
    public static function get_template_global_variables() {
        return array(
            'AlertsConfig' => 'current_alerts_config',
        );
    }
}

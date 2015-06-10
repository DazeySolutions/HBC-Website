<?php

namespace Application\Block\FeatureArea;
use Page;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");

use Concrete\Core\Block\BlockController;
use Less_Parser;
use Less_Tree_Rule;
use Core;

class Controller extends BlockController
{

    public $helpers = array('form');

    protected $btInterfaceWidth = 600;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btInterfaceHeight = 600;
    protected $btTable = 'btFeatureArea';
	protected $btDefaultSet = 'basic';
    public function getBlockTypeDescription()
    {
        return t("Dynamicly added area for laying out page from CMS");
    }

    public function getBlockTypeName()
    {
        return t("Area");
    }

    public function add()
    {
        $this->edit();
    }

    public function edit()
    {
    }

    public function save($args)
    {
        parent::save($args);
    }


}

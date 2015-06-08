<?php

namespace Application\Block\OneColumnRow;
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
    protected $btTable = 'btOneColumnSection';

    public function getBlockTypeDescription()
    {
        return t("Displays a single column section row.");
    }

    public function getBlockTypeName()
    {
        return t("One Column Row");
    }

    public function add()
    {
        $this->edit();
    }

    public function edit()
    {
    }

    public function getSearchableContent()
    {
        return $this->columnOneTitle . ' ' . $this->columnOneContent;
    }

    public function save($args)
    {
        parent::save($args);
    }


}
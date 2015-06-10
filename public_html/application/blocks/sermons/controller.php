<?php

namespace Application\Block\Sermons;

use Page;
use Concrete\Core\Block\BlockController;
use Concrete\Core\Tree\Node\Type\Topic;

defined('C5_EXECUTE') or die("Access Denied.");

class Controller extends BlockController
{
    public $helpers = array('form');

    protected $btInterfaceWidth = 400;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;
    protected $btInterfaceHeight = 400;
    protected $btTable = 'btSermons';
	
    public function getBlockTypeDescription()
    {
        return t("Displays Sermon Series Setup through external application");
    }

    public function getBlockTypeName()
    {
        return t("Sermon Series");
    }

    public function save($data)
    {
        parent::save($data);
    }
}

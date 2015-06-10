<?php

namespace Application\Block\SectionTitle;

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
    protected $btTable = 'btSectionTitle';

    public function getBlockTypeDescription()
    {
        return t("Displays a Section's Title");
    }

    public function getBlockTypeName()
    {
        return t("Section Title");
    }

    public function getSearchableContent()
    {
        return $this->getTitleText();
    }

    public function getTitleText()
    {
        return $title;
    }

    public function view()
    {
        $this->set('title', $this->getTitleText());
    }

    public function save($data)
    {
        parent::save($data);
    }
}

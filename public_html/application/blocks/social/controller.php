<?php

namespace Application\Block\Social;
use Page;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");

use Concrete\Core\Block\BlockController;
use Concrete\Core\Sharing\SocialNetwork\Link;
use Concrete\Core\Sharing\SocialNetwork\Service;
use Database;
use Core;

class Controller extends BlockController
{

    public $helpers = array('form');

    protected $btInterfaceWidth = 600;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btInterfaceHeight = 600;
    protected $btTable = 'btSocial';
	protected $btDefaultSet = 'social';
	protected $socialData;
    public function getBlockTypeDescription()
    {
        return t("Select social links/feeds to display.");
    }

    public function getBlockTypeName()
    {
        return t("Social");
    }

    public function add()
    {
    	$this->requireAsset('javascript', 'bootstrap-tab');
    	$this->requireAsset('css', 'font-awesome');
    	$links = Link::getList();
    	$socialData = array();
    	foreach($links as $link){
    		$service = $link->getServiceObject();
     		$socialData[$link->getID()] = array("name"=>$service->getName(), "icon"=>$service->getIcon(), "url"=>$link->getURL(), "feed"=>false, "show"=>false, "access"=>"", "userid"=>"");
    	}
    	$this->set('socialData', $socialData);
    	$this->set('title', $this->title);
    }

    public function edit()
    {
    	$this->requireAsset('javascript', 'bootstrap-tab');
    	$this->requireAsset('css', 'font-awesome');
    	$all = Link::getList();
    	$socialData = json_decode($this->sData, true);
    
    	foreach($all as $link){
    		if(!isset($socialData[$link->getID()])){
    			$service = $link->getServiceObject();
     			$socialData[$link->getID()] = array("name"=>$service->getName(), "icon"=>$service->getIcon(), "url"=>$link->getURL(), "feed"=>false, "show"=>false, "access"=>"", "userid"=>"");
    		}
    	}
    	
		$this->set('socialData', $socialData);
		$this->set('title', $this->title);
    }
    
    public function save($data)
    {
		$showIDs = $data['showID'];
		$feedIDs = $data['feedID'];
		$access = $data['access'];
		$users = $data['user'];
		$links = Link::getList();
    	$socialData = array();
    	foreach($links as $link){
    		if(!isset($socialData[$link->getID()])){
    			$service = $link->getServiceObject();
     			$socialData[$link->getID()] = array("name"=>$service->getName(), "icon"=>$service->getIcon(), "url"=>$link->getURL(), "feed"=>false, "show"=>false, "access"=>"", "userid"=>"");
    		}
    	}
    	foreach($socialData as $key => $value){
    	
    		if(isset($showIDs[$key])){
    			$value['show'] = true;
    		}
    		if(isset($feedIDs[$key])){
    			$value['feed'] = true;
    		}
    		if(isset($access[$key])){
    			$value['access'] = $access[$key];
    		}
    		if(isset($users[$key])){
    			$value['userid'] = $users[$key];
    		}
    		$socialData[$key] = $value;
    	}
    	$args['title'] = $data['title'];
    	$args['sData'] = json_encode($socialData);
        parent::save($args);
    }

 	public function view()
    {
    	$this->requireAsset('javascript', 'instafeed');
    	$this->requireAsset('css', 'font-awesome');
    	$this->requireAsset('javascript', 'slick');
    	$this->requireAsset('css', 'slick');
    	$all = Link::getList();
    	$socialData = json_decode($this->sData, true);
    
    	foreach($all as $link){
    		if(!isset($socialData[$link->getID()])){
    			$service = $link->getServiceObject();
     			$socialData[$link->getID()] = array("name"=>$service->getName(), "icon"=>$service->getIcon(), "url"=>$link->getURL(), "feed"=>false, "show"=>false, "access"=>"", "userid"=>"");
    		}
    	}
    	
		$this->set('socialData', $socialData);
    	$this->set('title', $this->title);
    }
    
    public function on_start(){
    	$al = \Concrete\Core\Asset\AssetList::getInstance();
    	$al->register('javascript', 'instafeed', 'blocks/social/assets/instafeed.min.js');
    	$al->register('css', 'slick', 'blocks/social/assets/slick.css');
    	$al->register('javascript', 'slick', 'blocks/social/assets/slick.js');
    	$al->register('javascript', 'bootstrap-tab', 'blocks/social/assets/tab.js');
    }

}

?>

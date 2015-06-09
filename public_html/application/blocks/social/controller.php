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
     		$socialData[$link->getID()] = array("name"=>$service->getName(), "icon"=>$service->getIcon(), "url"=>$link->getURL(), "feed"=>false, "show"=>false, "access"=>"");
    	}
    	$this->set('socialData', $socialData);
    }

    public function edit()
    {
    	$this->requireAsset('javascript', 'bootstrap-tab');
    	$this->requireAsset('css', 'font-awesome');
    	$all = Link::getList();
    	$socialData = json_decode($this->social, true);
    
    	foreach($all as $link){
    		if(!isset($socialData[$link->getID()])){
    			$service = $link->getServiceObject();
     			$socialData[$link->getID()] = array("name"=>$service->getName(), "icon"=>$service->getIcon(), "url"=>$link->getURL(), "feed"=>false, "show"=>false, "access"=>"");
    		}
    	}
    	
		$this->set('socialData', $socialData);
    }
    
    public function save($data)
    {
		$showIDs = $data['showID'];
		$feedIDs = $data['feedID'];
		$access = $data['access'];
		print_r($data);
		$links = Link::getList();
    	$socialData = array();
    	foreach($links as $link){
    		if(!isset($socialData[$link->getID()])){
    			$service = $link->getServiceObject();
     			$socialData[$link->getID()] = array("name"=>$service->getName(), "icon"=>$service->getIcon(), "url"=>$link->getURL(), "feed"=>false, "show"=>false, "access"=>"");
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
    			$value['access'] = "".$access[$key];
    		}
    	}
    	$args['social'] = json_encode($socialData);
        parent::save($args);
    }

 	public function view()
    {
    	$this->requireAsset('javascript', 'instafeed');
    	$this->requireAsset('css', 'font-awesome');
        $this->set('socialData', json_decode($this->social));
    }
    
    public function on_start(){
    	$al = \Concrete\Core\Asset\AssetList::getInstance();
    	$al->register('javascript', 'instafeed', 'blocks/social/assets/instafeed.min.js');
    	$al->register('javascript', 'bootstrap-tab', 'blocks/social/assets/tab.js');
    }

}

?>

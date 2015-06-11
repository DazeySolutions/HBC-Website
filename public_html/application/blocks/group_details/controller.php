<?php
namespace Application\Block\GroupDetails;
use Loader;
use Group;
use GroupList;
use \Concrete\Core\Block\BlockController;
class Controller extends BlockController {
	
	protected $btInterfaceWidth = 480;
	protected $btCacheBlockRecord = true;
	protected $btCacheBlockOutput = true;
	protected $btCacheBlockOutputOnPost = true;
	protected $btCacheBlockOutputForRegisteredUsers = true;
	protected $btInterfaceHeight = 600;
	protected $btTable = 'btGroupDisplay';
	
	/** 
	 * Used for localization. If we want to localize the name/description we have to include this
	 */
	public function getBlockTypeDescription() {
		return t("List files by set");
	}
	
	public function getBlockTypeName() {
		return t("File Sets");
	}

	public function add(){
		$this->common();
	}
	public function edit(){
		$this->common();
	}
	public function view(){
	
	}
	
	protected function common(){
	}
	public function save($data){
		
		parent::save($data);
	}
}
?>

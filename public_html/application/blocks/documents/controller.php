<?php
namespace Application\Block\Documents;
use Loader;
use File;
use \Concrete\Core\Block\BlockController;
class Controller extends BlockController {
	
	protected $btInterfaceWidth = 480;
	protected $btCacheBlockRecord = true;
	protected $btCacheBlockOutput = true;
	protected $btCacheBlockOutputOnPost = true;
	protected $btCacheBlockOutputForRegisteredUsers = true;
	protected $btInterfaceHeight = 600;
	protected $btTable = 'btDocuments';
	
	protected $btDefaultSet = 'basic';
	
	protected $files = array();
	
	/** 
	 * Used for localization. If we want to localize the name/description we have to include this
	 */
	public function getBlockTypeDescription() {
		return t("Sorted List of Files.");
	}
	
	public function getBlockTypeName() {
		return t("Documents");
	}

	public function add(){
		$this->common();
	}
	public function edit(){
		$this->common();
	}
	public function view(){
		$this->common();
	}
	
	protected function common(){
		$files = json_decode($this->fileData, true);
		$this->set('files', $files);
		$this->set('title', $this->title);
		$this->set('sortType', $this->sortType);
	}
	public function getFileObject($id) {
		return File::getByID($id);
	}
	public function getSortTypes(){
		$ar = array("0"=>"Date ex(2015>Jan>15)","1"=>"Date ex(2015>Jan-Feb)" ,"2"=>"Title");
		return $ar;
	}
		
}
?>

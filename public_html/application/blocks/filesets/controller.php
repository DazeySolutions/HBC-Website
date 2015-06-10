<?php
namespace Application\Block\Filesets;
use Loader;
use File;
use FileSet;
use \Concrete\Core\Block\BlockController;
class Controller extends BlockController {
	
	protected $btInterfaceWidth = 480;
	protected $btCacheBlockRecord = true;
	protected $btCacheBlockOutput = true;
	protected $btCacheBlockOutputOnPost = true;
	protected $btCacheBlockOutputForRegisteredUsers = true;
	protected $btInterfaceHeight = 600;
	protected $btTable = 'btFilesets';
	
	protected $btDefaultSet = 'basic';
	
	protected $files = array();
	
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
		$files = FileSet::getFilesBySetName($this->fileSetName);
		$dispArray = array();
		foreach($files as $file){
			$date = $file->getAttribute('service');
			$d = new DateTime($date);
			print_r($d);
			$dispArray[] = $date;
		}
		$this->set('dates', $dispArray);
	}
	
	protected function common(){
	}
	public function getSortTypes(){
		$ar = array("0"=>"Date ex(2015>Jan>15)","1"=>"Date ex(2015>Jan-Feb)" ,"2"=>"Title");
		return $ar;
	}
	public function save($data){
		
		parent::save($data);
	}
}
?>

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
			switch($this->sortType){
				case 0:
					$date = $file->getAttribute('service');
					$d = new \DateTime($date);
					$year = $d->format('YY');
					$month = $d->format('MM');
					$day = $d->format('DD');
					
					
					if(isset($dispArray[$year])){
						if(isset($dispArray[$year][$month])){
							$dispArray[$year][$month][$day] = $file->getRelativePath();
						}else{
							$dispArray[$year][$month] = array($day=>$file->getRelativePath());
						}
					}else{
						$dispArray[$year] = array($month=>array($day=>$file->getRelativePath()));
					}
					break;
				case 1:
					$date = $file->getAttribute('service');
					$d = new \DateTime($date);
					$year = $d->format('YY');
					$month = $d->format('MM');
					$day = $d->format('DD');
					if($day > 27){
						$sub = $day-27;
						$d->sub(new \DateInterval("P".$sub."D"));
					}
					$d->add(new \DateInterval('P1M'));
					$month .= $d->format('MM');
					if(isset($dispArray[$year])){
						$dispArray[$year][$month]= $file->getRelativePath();
					}else{
						$dispArray[$year] = array($month=>$file->getRelativePath());
					}
					break;
				case 2:
					break;
			}
		}
		$this->set('docs', $dispArray);
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

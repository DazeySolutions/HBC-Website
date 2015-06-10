<?php defined('C5_EXECUTE') or die("Access Denied.");
		$files = FileSet::getFilesBySetName($this->fileSetName);
		foreach($files as $file){
			$date = $file->getAttribute('service');
			echo $date;	
		}?>

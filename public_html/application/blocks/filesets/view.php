<?php defined('C5_EXECUTE') or die("Access Denied.");
		$fileAr = FileSet::getFilesBySetName($this->fileSetName);
		foreach($fileAr as $fil){
			$date = $fil->getAttribute('service');
			echo $date;	
		}?>

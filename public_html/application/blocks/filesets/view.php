<?php defined('C5_EXECUTE') or die("Access Denied.");
$files = FileSet::getFilesBySetName($fileSetName);
print_r($files);
?>

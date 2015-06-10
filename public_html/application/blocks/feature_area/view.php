<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="row section-row">
	<?php $c = Page::getCurrentPage(); ?>
	<?php
        $a = new Area($areaName);
        if($bootstrap3 == 1){
        	$a->setAreaGridMaximumColumns(12);
        }
        $a->display($c);
    ?>
</div>
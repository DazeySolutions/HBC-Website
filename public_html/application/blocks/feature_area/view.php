<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php $c = Page::getCurrentPage(); ?>
<?php if($c->isEditMode()) { ?>
	</div>
<?php } ?>

<div class="row section-row" style="z-index: 2000;">

	<?php
        $a = new Area($areaName);
    	$a->setAreaGridMaximumColumns(12);
        $a->display($c);
    ?>
</div>

<?php if($c->isEditMode()) { ?>
	<div>
<?php } ?>
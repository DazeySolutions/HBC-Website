<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<fieldset>
	<legend><?php echo t('Area')?></legend>
    <div class="form-group">
        <?php echo $form->label('areaName', t('Name'));?>
        <?php echo $form->text('areaName', $areaName); ?>
    </div>
</fieldset>
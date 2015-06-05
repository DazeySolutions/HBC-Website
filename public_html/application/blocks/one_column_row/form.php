<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<fieldset>
	<legend><?php echo t('Column One')?></legend>
    <div class="form-group">
        <?php echo $form->label('columnOneTitle', t('Title'));?>
        <?php echo $form->text('columnOneTitle', $columnOneTitle); ?>
    </div>
    <div class="form-group">
        <?php echo $form->label('columnOneContnet', t('Content'));?>
        <?php echo $form->textarea('columnOneContnet', $columnOneContnet); ?>
    </div>
</fieldset>
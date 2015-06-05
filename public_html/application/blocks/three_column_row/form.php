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

<fieldset>
	<legend><?php echo t('Column Two')?></legend>
    <div class="form-group">
        <?php echo $form->label('columnTwoTitle', t('Title'));?>
        <?php echo $form->textarea('columnTwoTitle', $columnTwoTitle); ?>
    </div>
    <div class="form-group">
        <?php echo $form->label('columnTwoContnet', t('Content'));?>
        <?php echo $form->textarea('columnTwoContnet', $columnTwoContnet); ?>
    </div>
</fieldset>

<fieldset>
	<legend><?php echo t('Column Three')?></legend>
    <div class="form-group">
        <?php echo $form->label('columnThreeTitle', t('Title'));?>
        <?php echo $form->textarea('columnThreeTitle', $columnThreeTitle); ?>
    </div>
    <div class="form-group">
        <?php echo $form->label('columnThreeTitle', t('Content'));?>
        <?php echo $form->textarea('columnThreeTitle', $columnThreeTitle); ?>
    </div>
</fieldset>
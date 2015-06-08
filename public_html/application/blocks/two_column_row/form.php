<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<fieldset>
	<legend><?php echo t('Column One')?></legend>
    <div class="form-group">
        <?php echo $form->label('columnOneTitle', t('Title'));?>
        <?php echo $form->text('columnOneTitle', $columnOneTitle); ?>
    </div>
    <div class="form-group">
        <?php echo $form->label('columnOneContnet', t('Content'));?>
        <?php
            $editor = Core::make('editor');
            echo $editor->outputStandardEditor('columnOneContnet', $columnOneContnet); ?>
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
         <?php
            $editor = Core::make('editor');
            echo $editor->outputStandardEditor('columnTwoContnet', $columnTwoContnet); ?>
    </div>
</fieldset>

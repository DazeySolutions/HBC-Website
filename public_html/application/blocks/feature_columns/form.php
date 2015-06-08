<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<fieldset>
	<legend><?php echo t("Number of Columns")?></legend>
	<div class="form-group num-cols">
		<?php echo $form->label('numberOfColumns', t('Columns'));?>
        <?php echo $form->select('numberOfColumns', array("1","2","3"), $numberOfColumns); ?>
        <script>
        	$(".num-cols select").change(function(){
        		var numCols = $(".num-cols select option:selected").val();
        		if(numCols == 0){
        			$(".col-two").hide();
        			$(".col-three").hide();
        		}else if(numCols == 1){
        			$(".col-two").show();
        			$(".col-three").hide();
        		}else{
        			$(".col-two").show();
        			$(".col-three").show();
        		}
        	});
        </script>
	</div>
</fieldset>
<fieldset>
	<legend><?php echo t('Column One')?></legend>
    <div class="form-group">
        <?php echo $form->label('columnOneTitle', t('Title'));?>
        <?php echo $form->text('columnOneTitle', $columnOneTitle); ?>
    </div>
    <div class="form-group">
        <?php echo $form->label('columnOneContent', t('Content'));?>
        <?php
            $editor = Core::make('editor');
            echo $editor->outputStandardEditor('columnOneContent', $columnOneContent);
        ?>
    </div>
</fieldset>
<?php if($numberOfColumns == 0) {?>
	<fieldset class="col-two" style="display: none;">
<?php } else { ?>
	<fieldset class="col-two">
<?php } ?>
	<legend><?php echo t('Column Two')?></legend>
    <div class="form-group">
        <?php echo $form->label('columnTwoTitle', t('Title'));?>
        <?php echo $form->textarea('columnTwoTitle', $columnTwoTitle); ?>
    </div>
    <div class="form-group">
        <?php echo $form->label('columnTwoContent', t('Content'));?>
        <?php
            $editor = Core::make('editor');
            echo $editor->outputStandardEditor('columnTwoContent', $columnTwoContent);
        ?>
    </div>
</fieldset>

<?php if($numberOfColumns == 0 || $numberOfColumns == 1) {?>
	<fieldset class="col-three"  style="display: none;">
<?php } else { ?>
	<fieldset class="col-three">
<?php } ?>
	<legend><?php echo t('Column Three')?></legend>
    <div class="form-group">
        <?php echo $form->label('columnThreeTitle', t('Title'));?>
        <?php echo $form->textarea('columnThreeTitle', $columnThreeTitle); ?>
    </div>
    <div class="form-group">
        <?php echo $form->label('columnThreeContent', t('Content'));?>
        <?php
            $editor = Core::make('editor');
            echo $editor->outputStandardEditor('columnThreeContent', $columnThreeContent);
        ?>
    </div>
</fieldset>
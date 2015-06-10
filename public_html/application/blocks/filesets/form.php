<?php defined('C5_EXECUTE') or die("Access Denied.");
$filesets = FileSet::getMySets();
?>
<div class="page-header">
	<h2><?php echo t('Choose Fileset')?></h2>
</div>
<div class="form-group">
 	<?php echo $form->label('sortType', t('Select Sort Type'));?>
 	<select id="sortType" name="sortType">
 		<option value="0" <?php if ($sortType == 0) { ?>selected<?php } ?>>Date ex(2015>Jan>15)</option>
 		<option value="1" <?php if ($sortType == 1) { ?>selected<?php } ?>>Date ex(2015>Jan-Feb)</option>
 		<option value="2" <?php if ($sortType == 2) { ?>selected<?php } ?>>Title</option>
 	</select>
</div>
<div class="form-group">
 	<label for="title">Section Title <small>ex(Bulletins)</small></label>
	<?php echo $form->text('title', $title);?>
</div>
<div class="form-group">
	<?php echo $form->label('fileSetName', t('Select File Set Name')); ?>
	<select name="fileSetName">
		<?php foreach($filesets as $fileset) { 
			print_r($fileset);
		} ?>
	</select>
</div>
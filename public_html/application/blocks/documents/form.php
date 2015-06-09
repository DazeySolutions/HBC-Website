<?php defined('C5_EXECUTE') or die("Access Denied.");
$al = Loader::helper('concrete/asset_library');  ?>
<div class="page-header">
	<h2><?php echo t('Choose Documents')?></h2>
</div>
<div class="form-group">
 	<?php echo $form->label('sortType', t('Select Sort Type'));?>
 	<select id="sortType">
 		<option value="0" <?php if ($sortType == 0) { ?>selected<?php } ?>>Date ex(2015>Jan>15)</option>
 		<option value="1" <?php if ($sortType == 1) { ?>selected<?php } ?>>Date ex(2015>Jan-Feb)</option>
 		<option value="2" <?php if ($sortType == 2) { ?>selected<?php } ?>>Title</option>
 	</select>
</div>
<div class="form-group">
 	<?php echo $form->label('title', t('Section Title ex(Bulletins)'));?>
	<?php echo $form->text('title', $title);?>
</div>
<div class="form-group">
	<?php echo $form->label('fID', t('File'))?>
	<?php echo $al->file('ccm-b-file', 'fID', t('Choose File'));?>
	<button class="btn btn-success add-file">Confirm File</button>
	<script>
		$(".add-file").click(function(){
			if($("input[name=fID]").val() != 0){
				var newRow = "<tr>";
				newRow += "<td class='col-xs-2'>"+$(".ccm-file-selector-file-selected-thumbnail").html()+"</td>";
				newRow += "<td class='col-xs-5'><input type='text' class='form-control' name='fTitle["+$("input[name=fID]").val()+"]'></td>";
				newRow += "<td class='col-xs-5'>"+$(".ccm-file-selector-file-selected-title").text()+"</td>";
				newRow += "</tr>";
				$("table.docs tbody").append(newRow);
			}
		});
	</script>
</div>
<table class="table table-striped table-condensed docs">
	<thead>
		<tr>
			<th>Thumbnail</th>
			<th>Title</th>
			<th>File Name</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
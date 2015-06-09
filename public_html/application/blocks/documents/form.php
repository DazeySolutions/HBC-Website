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
 	<label for="title">Section Title <small>ex(Bulletins)</small></label>
	<?php echo $form->text('title', $title);?>
</div>
<div class="form-group">
	<?php echo $form->label('fID', t('File'))?>
	<?php echo $al->file('ccm-b-file', 'fID', t('Choose File'));?>
	<button class="btn btn-success add-file">Confirm File</button>
	<script>
		$(".add-file").click(function( event ) {
  			event.preventDefault();
			if($("input[name=fID]").val() != 0 && $("table tbody td input[name='fTitle["+$("input[name=fID]").val()+"]']").length == 0){
				var newRow = "<tr>";
				newRow += "<td class='col-xs-2'>"+$(".ccm-file-selector-file-selected-thumbnail").html()+"</td>";
				newRow += "<td class='col-xs-5'><input type='text' class='form-control' name='fTitle["+$("input[name=fID]").val()+"]'></td>";
				newRow += "<td class='col-xs-4'>"+$(".ccm-file-selector-file-selected-title").text()+"</td>";
				newRow += "<td class='col-xs-1'><button class='btn btn-danger deleterow'>X</button></td>";
				newRow += "</tr>";
				$("table.docs tbody").append(newRow);
				$("#ccm-menu-click-proxy").click();
				$("a[data-file-manager-action=clear]:first").click();
			}else if($("table tbody td input[name='fTitle["+$("input[name=fID]").val()+"]']").length != 0){
				$("#ccm-menu-click-proxy").click();
				$("a[data-file-manager-action=clear]:first").click();
				alert("Select a different file!");
			}
		});
		
		$(".delterow").click(function(event){
			event.preventDefault();
			$(this).parent().parent().remove();
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
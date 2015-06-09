<?php defined('C5_EXECUTE') or die("Access Denied.");  ?>
<div class="page-header">
	<h2><?php echo t('Choose Social Links to Show')?></h2>
</div>
<div role="tabpanel">
    <?php if (count($socialData) == 0) { ?>
        <p><?php echo t('You have not added any social links.')?></p>
    <?php } else { ?>
    	<ul class="nav nav-tabs" role="tablist">
    	<?php $index = 0; ?>
    	<?php foreach($socialData as $slID => $data) {?>
			<li role="presentation" <?php if($index==0) { ?> class="active" <?php }?> >
				<a href="#<?php echo $data['name']?>" aria-controls="<?php echo $data['name']?>" role="tab" data-toggle="tab"><i class="fa fa-fw fa-lg fa-<?php echo $data['icon'] ?>"</i> &nbsp;<?php echo $data['name']?></a>
			</li>
			<?php $index = 1; ?>
		<?php } ?>
  		</ul>
		<div class="tab-content">
			<?php $index = 0; ?>
			<?php foreach($socialData as $slID => $data) {?>
				<div role="tabpanel" class="tab-pane <?php if($index==0) { ?> active <?php } ?>" id="<?php echo $data['name']?>">
					<div class="well well-sm">
						<label class="checkbox-inline">
			            	<input type="checkbox" name="showID[<?php echo $slID ?>]" <?php if ($data['show']) { ?> checked <?php } ?> value="<?php echo $slID ?>" />
			            	Link
			            </label>
			            <label class="checkbox-inline">
			            	<input id="feed<?php echo $data['name'] ?>" type="checkbox" name="feedID[<?php echo $slID ?>]" <?php if ($data['feed']) { ?> checked <?php } ?> value="<?php echo $slID ?>" />
			            	Feed
			            </label>
			            <script>
			            	$("#feed<?php echo $data['name'] ?>").change(function(){
			            		if($(this).is(":checked")){
			            			$("#access<?php echo $data['name'] ?>").show();
			            		}else{
			            			$("#access<?php echo $data['name'] ?>").hide();
			            		}
			            	});
			            </script>
			            <div class="form-group" id="access<?php echo $data['name'] ?>" <?php if(!$data['feed']) { ?> style="display:none;"<?php } ?>>
				            <?php echo $form->label('access['.$slID.']', t('Feed Access'));?>
	            			<?php echo $form->text('access['.$slID.']', $data['access']);?>
			            </div>
					</div>
				</div>
				<?php $index = 1; ?>
			<?php } ?>
		</div>
	<?php } ?>
</div>
<hr/>
<div class="alert alert-info">
    <?php echo t('Add social links <a href="%s">in the dashboard</a>', URL::to('/dashboard/system/basics/social'))?>
</div>
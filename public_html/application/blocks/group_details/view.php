<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="row section">
	<div class="col-xs-12 col-md-10 col-md-offset-1">
		<hr class="hidden-xs col-sm-3">
		<h2 class="col-xs-12 col-sm-6"><?php echo h($title)?></h2>
		<hr class="hidden-xs col-sm-3">
		<?php foreach($userData as $user){ ?>
		<div class="col-xs-12 col-sm-4">
			<?php echo $user->getAttribute('real_name'); ?>
			<?php $av = Loader::helper('concrete/avatar'); ?>
			<?php $av->outputUserAvatar($user); ?>
		</div>
		<?php } ?>
	</div>
</div>
<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="row section">
	<div class="col-xs-12 col-md-10 col-md-offset-1">
		<hr class="hidden-xs col-sm-3">
		<h2 class="col-xs-12 col-sm-6"><?php echo h($title)?></h2>
		<hr class="hidden-xs col-sm-3">
		<?php foreach($userData as $user){ ?>
		<div class="col-xs-12 col-sm-4">
			<?php $im = $user->getAttribute('profile_image'); ?>
			<img src="<?php echo $im->getRelativePath(); ?>" style="width: 100%;">
			<div class="text-center col-xs-12">
				<h4><?php echo $user->getAttribute('real_name'); ?></h4>
				<h5><?php echo $user->getAttribute('title'); ?></h5>
				<p data-toggle="collapse" data-target="#<?php echo $user->getUserID()?>Details">Details</p>
				<p id="<?php echo $user->getUserID()?>Details"><?php echo $user->getAttribute('details'); ?></p>
			</div>
		</div>
		<?php } ?>
	</div>
</div>
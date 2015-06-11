<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="row section">
	<div class="col-xs-12 col-md-10 col-md-offset-1">
		<hr class="hidden-xs col-sm-3">
		<h2 class="col-xs-12 col-sm-6"><?php echo h($title)?></h2>
		<hr class="hidden-xs col-sm-3">
		<?php foreach($userData as $user){ ?>
		<div class="col-xs-12 col-sm-4">
			<?php $im = $user->getAttribute('profile_image'); ?>
			<a data-toggle="collapse" href="#<?php echo $user->getUserID()?>Details">
				<img data-toggle="tooltip" data-placement="top" title="<h3>Click for more info</h3>" src="<?php echo $im->getRelativePath(); ?>" style="width: 100%;">
			</a>
			<div class="text-center col-xs-12">
				<h4><?php echo $user->getAttribute('real_name'); ?></h4>
				<h5><?php echo $user->getAttribute('title'); ?></h5>
				<div id="<?php echo $user->getUserID()?>Details"><?php echo $user->getAttribute('details'); ?></div>
			</div>
		</div>
		<?php } ?>
	</div>
</div>
<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>
<div class="row section-row connection">
<?php if(count($socialData != 0)){ ?>
	<div class="col-xs-12 col-md-10 col-md-offset-1">
		<?php 
		$feedCount = 0;
		foreach($socialData as $data) {
			if($data['feed']){
				$feedCount += 1;
			}	
		} ?>
		<?php if($feedCount>0){ ?>
			<?php if(12 % $feedCount == 0){
				$colwidth = 12/$feedCount;
			}else{
				$colwidth = 12%$feedCount;
			}
			?>
			<?php for($i=0; $i<$feedCount; $i++){ ?>
			<div class="col-xs-12 col-md-<?php echo $colwidth ?>">
		        <h4 class="col-xs-12"><?php echo $data['Name'] ?></h4>
		        <?php if($data['Name'] == "Instagram") { ?>
		        	<div id="instafeed"></div>
		        	<script>
						var feed = new Instafeed({
							get:'user',
							userId: 1678475616,
							accessToken: '<?php $data['access']?>',
							limit: 9,
							resolution: 'standard_resolution',
							template: '<div class="col-xs-12 col-sm-6 col-md-4"><a href="{{link}}" target="_blank"><div style="width:100%; height: 100%; position: relative;"><img src="{{image}}" 
						});
						feed.run();
		        	</script>
		        <?php } ?>
			</div>
			<?php }?>
		<?php }?>
	</div>
	<?php } ?>
</div>

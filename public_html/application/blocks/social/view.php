<?php
defined('C5_EXECUTE') or die("Access Denied.");
$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item row section">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Social (Link/Feed) disabled in edit mode.')?></div>
    </div>
<?php  } else { ?>
	<div class="section row connection">
		<?php if(count($socialData != 0)){ ?>
			<div class="col-xs-12 col-md-10 col-md-offset-1">
			<?php $feedCount = 0;
			foreach($socialData as $data) {
						if($data['feed']){
				$feedCount += 1;
			}	
		} ?>
			<?php if($feedCount>0){ ?>
				<?php 	if(12 % $feedCount == 0){
							$colwidth = 12/$feedCount;
						}else{
							$colwidth = 12%$feedCount;
						}?>
				<?php foreach($socialData as $data){ ?>
					<?php if($data['feed']) {?>
						<div class="col-xs-12 col-md-<?php echo $colwidth ?>">
							<h4 class="col-xs-12"><?php echo $data['name'] ?></h4>
							<?php if($data['name'] == "Instagram") { ?>
								<div id="instafeed"></div>
								<script>
									function loadInstafeed(){
										var feed = new Instafeed({
											get:'user',
											userId: <?php echo $data['userid']?>,
											accessToken: '<?php echo $data['access']?>',
											limit: 9,
											resolution: 'standard_resolution',
											template: '<div class="col-xs-12 col-sm-6 col-md-4"><a href="{{link}}" target="_blank"><div style="width:100%; height: 100%; position: relative;"><img src="{{image}}" /><div class="likes"><span class="heartsTable"><i class="heartsCell">&hearts; {{likes}}</i></span></div></div></a></div>'
										});
										feed.run();
									}
								</script>
							<?php } ?>
						</div>
					<?php } ?>
				<?php }?>
			<?php }?>
			</div>
		<?php } ?>
	</div>
<?php } ?>

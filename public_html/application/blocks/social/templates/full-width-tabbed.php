<?php
defined('C5_EXECUTE') or die("Access Denied.");
$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item row section-row">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Social (Link/Feed) disabled in edit mode.')?></div>
    </div>
<?php  } else { ?>
	<div class="row section-row connection">
		<?php if(count($socialData != 0)){ ?>
			<div class="col-xs-12 ">
				<div role="tabpanel">
					<ul class="nav nav-tabs" role="tablist">
		    		<?php $index = 0; ?>
		    		<?php foreach($socialData as $slID => $data) {?>
						<?php if($data['feed']) {?>
						<li role="presentation" <?php if($index==0) { ?> class="active" <?php }?> >
							<a href="#<?php echo $data['name']?>" aria-controls="<?php echo $data['name'] ?>" role="tab" data-toggle="tab">
								<i class="fa fa-fw fa-lg fa-<?php echo $data['icon'] ?>"></i>&nbsp;<?php echo $data['name']?>
							</a>
						</li>
						<?php $index = 1; ?>
						<?php } ?>
					<?php } ?>
			  		</ul>
			  		<div class="tab-content">
						<?php $index = 0; ?>
						<?php foreach($socialData as $slID => $data) {?>
							<?php if($data['feed']) {?>
							<div role="tabpanel" class="tab-pane <?php if($index==0) { ?> active <?php } ?>" id="<?php echo $data['name']?>">
								<div class="col-xs-12">
									<?php if($data['name'] == "Instagram") { ?>
										<div id="instafeed"></div>
										<script>
											function loadInstafeed(){
												var feed = new Instafeed({
													get:'user',
													userId: 1678475616,
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
							</div>
							<?php } ?>
						<?php }?>
					</div>
				</div>
			</div>
		<?php } ?>
	</div>
<?php } ?>

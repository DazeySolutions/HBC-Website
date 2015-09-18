<?php
defined('C5_EXECUTE') or die("Access Denied.");
$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item row section">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Social (Link/Feed) disabled in edit mode.')?></div>
    </div>
<?php  } else { ?>
	<div class="row connection">
        <div class="col-xs-12 col-md-10 col-md-offset-1">
		    <hr class="hidden-xs col-sm-3">
    		<h2 class="col-xs-12 col-sm-6"><?php echo h($title)?></h2>
	    	<hr class="hidden-xs col-sm-3">
		    <div class="row">
			    <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
    			<?php $feedCount = 0;
	    		foreach($socialData as $data) {
		    			if($data['feed']){
			    			$feedCount += 1;
				    	}
					    if($data['show']){ ?>
						    <a href="<?php echo $data['url']?>" style="text-decoration:none;">
							    <span class="fa-stack fa-2x">
								    <i class="fa fa-fw fa-stack-2x fa-circle  <?php echo $data['icon'] ?>-color"> </i> 
    								<i class="fa fa-fw fa-stack-1x fa-<?php echo $data['icon'] ?>"  style="color: white;"></i>
	    						</span> 
		    				</a>
			    <?php  }
				    } ?>
    			</div>
	    	</div>
		    <?php if(count($socialData != 0)){ ?>
			    <div class="col-xs-12 col-md-10 col-md-offset-1">
    			<?php if($feedCount>0){ ?>
	    			<?php 	if(12 % $feedCount == 0){
		    					$colwidth = 12/$feedCount;
			    			}else{
				    			$colwidth = 12%$feedCount;
					    	}?>
                    <div class="row">
    				<?php foreach($socialData as $data){ ?>
	    				<?php if($data['feed']) {?>
		    				<div class="col-xs-12 col-md-<?php echo $colwidth ?>">
                                <div class="row">
    			    				<h4 class="col-xs-12 text-center"><?php echo $data['name'] ?></h4>
                                </div>
				    			<?php if($data['name'] == "Instagram") { ?>
                                    <style>
                                        .slick-slide{
                                            position: relative;
                                            transform: scale(0.6,0.6);
                                        }
                                        .slick-active{
                                            transform: scale(0.8,0.8);
                                        }
                                        .slick-center{    
                                            transform: scale(1.0,1.0);
                                        }
                                        .slick-slide .over{
                                            position: absolute;
                                            width: 100%;
                                            height: 100%;
                                            top: 0;
                                            left: 0;
                                            background: rgba(0,0,0,.6667);
                                        }
                                        .slick-slide.slick-center .over{
                                            width: 0;
                                            height: 0;
                                            background: rgba(0,0,0,0);
                                        }
                                        .slick-slide img{
                                            width: 100%;
                                            margin: auto;
                                        }
                                        .middlearrow{
                                            display: none;
                                            position: absolute;
                                            top: 50%;
                                            transform: translate(-50%, -50%);
                                        }
                                    </style>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div style="position: absolute; top: 0; bottom: 0; left: 0;" class="hidden-xs">
                                                <a href="#" class="prev middlearrow"><i class="fa fa-chevron-left fa-2x"></i></a>
                                            </div>
                                            <div id="instafeed"></div>
                                            <div style="position: absolute; top: 0; bottom: 0; right: 0;" class="hidden-xs">
                                                <a href="#" class="next middlearrow"><i class="fa fa-chevron-right fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <script>$('#instafeed').slick('slickNext');
                                        function prevent(e){
                                            e.preventDefault();
                                        }
							    		function loadInstafeed(){
								    		var feed = new Instafeed({
									    		get:'user',
    											userId: <?php echo $data['userid']?>,
	    										accessToken: '<?php echo $data['access']?>',
		    									limit: 9,
			    								resolution: 'standard_resolution',
				    							template: '<div><a href="{{link}}" target="_blank"><img src="{{image}}" /><div class="over"></div></a></div>',
                                                after: startCarousel
					    					});
						    				feed.run();
                                        }
                                        function startCarousel(){
							    		    $("#instafeed").slick({
                                                centerMode: true,
                                                centerPadding: '0px',
                                                slidesToShow: 5,
                                                autoplay: true,
                                                autoplaySpeed: 7000,
                                                arrows: false,
                                            });
                                            $('a.middlearrow').show();
                                            $('a.next').click(function(e){
                                                prevent(e);
                                                $('#instafeed').slick('slickNext');
                                            });
                                            $('a.prev').click(function(e){
                                                prevent(e);
                                                $('#instafeed').slick('slickPrev');
                                            });
                                        }
								    </script>
    							<?php }else if($data['name'] == "Facebook") { ?>
                                    <div id="ibacor_fb_content">
                                        <div class="ibacor_fb_streaming"></div>
                                    </div>
                                    <script>
                                        ibacor_fb_streaming(
                                            ibacor_fb_id = <?php echo $data['userid'] ?>, // example your Groups_id or FansPage_id. Find your facebook_id in http://ibacor.com/media/sosmed-user-id-finder/
                                            ibacor_fb_limit = 5, // max 25
                                            ibacor_fb_token = 'ibacor.com_apps' // => Default using the access_token ibacor.com_apps OR you can change it using the access token that you have => example: ibacor_fb_token = '896774747546|62IEt1ttiNma_543fR5NAg8gNtRI' you can get it in https://developers.facebook.com/docs/apps
                                        );
                                    </script>
                                <?php } ?>
	    					</div>
		    			<?php } ?>
			    	<?php }?>
                    </div>
    			<?php }?>
	    		</div>
		    <?php } ?>
    	</div>
    </div>
<?php } ?>

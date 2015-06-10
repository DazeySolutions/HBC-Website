<!DOCTYPE html>
<html lang="en">
    <?php $this->inc('elements/head.php'); ?> 
    <body>
	    <script>
	        $(document).ready(function(){
	            $("body .section-row:odd").addClass("even");
	            $("body .section-row:even").addClass("odd");
	        });
	        <?php if($c->isEditMode()){ ?>
	        	MutationObserver = window.MutationObserver || window.WebKitMutationObserver;
	
				var observer = new MutationObserver(function(mutations, observer) {
			        $("body .section-row:odd").addClass("even");
		            $("body .section-row:even").addClass("odd");
				});
				observer.observe(document, {
				  subtree: true,
				  attributes: true
				});
	        <?php } ?>
	    </script>
	    <div class="<?php echo $c->getPageWrapperClass()?>">
	        <?php $this->inc('elements/navigation.php'); ?> 
	        <?php
	            $a = new Area('Slide');
	            $a->display($c);
	        ?>
	        <div class="container-fluid">
	        	<div class="row">
	        		<div class="col-xs-12 col-md-10 col-md-offset-1">
	        			<div class="section-row">
					        <?php
					            $a = new Area('Content Section One');
					            $a->setAreaGridMaximumColumns(12);
					            $a->display($c);
					        ?>
						</div>
					</div>
				</div>
				<div class="row">
	        		<div class="col-xs-12 col-md-10 col-md-offset-1">
	        			<div class="section-row">
					        <?php
					            $a = new Area('Content Section Two');
					            $a->setAreaGridMaximumColumns(12);
					            $a->display($c);
					        ?>
						</div>
					</div>
			    </div>
				<div class="row">
	        		<div class="col-xs-12 col-md-10 col-md-offset-1">
	        			<div class="section-row">
					        <?php
					            $a = new Area('Content Section Three');
					            $a->setAreaGridMaximumColumns(12);
					            $a->display($c);
					        ?>
						</div>
					</div>
			    </div>
				<div class="row">
	        		<div class="col-xs-12 col-md-10 col-md-offset-1">
	        			<div class="section-row">
					        <?php
					            $a = new Area('Content Section Four');
					            $a->setAreaGridMaximumColumns(12);
					            $a->display($c);
					        ?>
						</div>
					</div>
			    </div>
				<div class="row">
	        		<div class="col-xs-12 col-md-10 col-md-offset-1">
	        			<div class="section-row">
					        <?php
					            $a = new Area('Content Section Five');
					            $a->setAreaGridMaximumColumns(12);
					            $a->display($c);
					        ?>
						</div>
					</div>
			    </div>
		    </div>
	        <?php
	          $a = new GlobalArea('Connection');
	          $a->display();
	        ?>
	        <?php $this->inc('elements/footer.php'); ?> 
	    </div>
	    <?php Loader::element('footer_required')?>
    </body>
</html>

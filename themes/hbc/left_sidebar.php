<!DOCTYPE html>
<html lang="en">
    <?php $this->inc('elements/head.php'); ?> 
    <body>
    <div class="<?php echo $c->getPageWrapperClass()?>">
        <?php $this->inc('elements/navigation.php'); ?> 
        <div class="container-fluid">
            <div class="row">
                <div class="off-canvas-left col-sm-3 col-lg-2">
                <?php
                    $a = new Area('Left');
                    $a->display($c);
                ?>
                </div>
                <div class="col-xs-12 col-sm-9 col-lg-10">
                	<div class="container-fluid">
			        	<div class="row">
				        	<?php
				            	$a = new Area('Main');
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

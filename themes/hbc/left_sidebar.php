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
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="<?php echo $view->getThemePath()?>/assets/js/bootstrap.min.js"></script>
      </div>
      <?php $this->inc('elements/footer.php'); ?> 
    </body>
</html>

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
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="<?php echo $view->getThemePath()?>/assets/js/bootstrap.min.js"></script>
      </div>
      <?php $this->inc('elements/footer.php'); ?> 
    </body>
</html>

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
	        <?php
	            $a = new Area('Main');
	            $a->display($c);
	        ?>
	        <div class="section-row">
	        <?php
	            $a = new Area('Main0');
	            $a->setAreaGridMaximumColumns(12);
	            $a->display($c);
	        ?>
	        </div>
	        <div class="section-row">
	        <?php
	            $a = new Area('Main1');
	            $a->setAreaGridMaximumColumns(12);
	            $a->display($c);
	        ?>
	        </div>
	        <div class="section-row">
	        <?php
	            $a = new Area('Main2');
	            $a->setAreaGridMaximumColumns(12);
	            $a->display($c);
	        ?>
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

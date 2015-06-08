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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="<?php echo $view->getThemePath()?>/assets/js/bootstrap.min.js"></script>
      </div>
      <div class="section-row">
        <?php
          $a = new GlobalArea('Connection');
          $a->enableGridContainer(); 
          $a->display();
        ?>
      </div>
      <?php $this->inc('elements/footer.php'); ?> 
    </body>
</html>

<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="row">
	<?php if($numberOfColumns == 0) { ?>
	<div class="ccm-one-column section-row">
	    <div class="col-xs-12 col-md-10 col-md-offset-1">
	        <div class="col-xs-12 col-md-6 col-md-offset-3">
	            <hr class="hidden-xs col-sm-3">
	            <h2 class="col-xs-12 col-sm-6"><?php echo $columnOneTitle ?></h2>
	            <hr class="hidden-xs col-sm-3">
	        </div>
	    	<div class="col-xs-12">
	    		<?php echo $columnOneContent ?>
	    	</div>
	    </div>
	</div>
	<?php }else if($numberOfColumns == 1){ ?>
	<div class="ccm-two-column section-row">
	    <div class="col-xs-12 col-md-10 col-md-offset-1">
	        <div class="col-xs-12 col-md-6">
	            <hr class="hidden-xs col-sm-3">
	            <h2 class="col-xs-12 col-sm-6"><?php echo $columnOneTitle ?></h2>
	            <hr class="hidden-xs col-sm-3">
			    <div class="col-xs-12">
			    	<?php echo $columnOneContent ?>
			    </div>
	        </div>
	        <div class="col-xs-12 col-md-6">
	            <hr class="hidden-xs col-sm-3">
	            <h2 class="col-xs-12 col-sm-6"><?php echo $columnTwoTitle ?></h2>
	            <hr class="hidden-xs col-sm-3">
			    <div class="col-xs-12">
			    	<?php echo $columnTwoContent ?>
			    </div>
	        </div>
	    </div>
	</div>
	<?php }else { ?>
	<div class="ccm-three-column section-row">
	    <div class="col-xs-12 col-md-10 col-md-offset-1">
	        <div class="col-xs-12 col-md-4">
	            <hr class="hidden-xs col-sm-3">
	            <h2 class="col-xs-12 col-sm-6"><?php echo $columnOneTitle ?></h2>
	            <hr class="hidden-xs col-sm-3">
			    <div class="col-xs-12">
			    	<?php echo $columnOneContent ?>
			    </div>
	        </div>
	        <div class="col-xs-12 col-md-4">
	            <hr class="hidden-xs col-sm-3">
	            <h2 class="col-xs-12 col-sm-6"><?php echo $columnTwoTitle ?></h2>
	            <hr class="hidden-xs col-sm-3">
			    <div class="col-xs-12">
			    	<?php echo $columnTwoContent ?>
			    </div>
	        </div>
	        <div class="col-xs-12 col-md-4">
	            <hr class="hidden-xs col-sm-3">
	            <h2 class="col-xs-12 col-sm-6"><?php echo $columnThreeTitle ?></h2>
	            <hr class="hidden-xs col-sm-3">
			    <div class="col-xs-12">
			    	<?php echo $columnThreeContent ?>
			    </div>
	        </div>
	    </div>
	</div>
	<?php } ?>
</div>
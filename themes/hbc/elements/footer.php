<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<footer id="bottom" class="footer container-fluid">
<div class="row section">
    <div class="col-xs-12 col-md-10 col-md-offset-1">
        <div class="col-xs-12 col-sm-4">
            <?php
                $a = new GlobalArea('Phone');
                $a->display();
            ?>
        </div>
        <div class="col-xs-12 col-sm-4">
            <?php
                $a = new GlobalArea('Location');
                $a->display();
            ?>
        </div>
        <div class="col-xs-12 col-sm-4">
            <?php
                $a = new GlobalArea('Email');
                $a->display();
            ?>
        </div>
    </div>
</div>
<div class="row">
        <?php
            $a = new GlobalArea('Map');
            $a->display();
        ?>
</div>
<div class="row section">
    <div class="col-xs-12 col-md-10 col-md-offset-1">
        <?php
            $a = new GlobalArea('Social');
            $a->display();
        ?>
    </div>
</div>
<div class="row section dark">
    <div class="col-xs-12 col-md-10 col-md-offset-1">
	    <div class="col-xs-12 col-sm-3">
            <hr class="hidden-xs col-sm-3 h4" />
            <h4 class="col-xs-12 col-sm-6 text-center">Connect With Us</h4>
            <hr class="hidden-xs col-sm-3 h4" />
            <p class="small col-xs-12">Have a question? A prayer request?  Or something else?  Send us an email and let us know how we can help you!</p>
            <div class="contactForm col-xs-12">
            <?php
                $a = new GlobalArea('Footer Contact');
                $a->display();
            ?>
            </div>
        </div>
        <div class="col-xs-12 col-sm-9">
            <div class="row">
            	<div class="col-xs-12">
		                <?php
		                    $a = new GlobalArea('Footer Content'); 
		                    $a->display();
		                ?>
		             </div>
            </div>
        </div>
        <div class="col-xs-12">
            <p class="pull-left small">
                Copyright ©  <?php echo date("Y");?> All Rights Resereved.
             </p>
             <p class="pull-right small">
    	        <?php $u = new User();
	            if($u->isLoggedIn()){ ?>
	                Hello, <a class="" href="<?php echo $this->url('/account')?>"><?php echo $u->getUserName() ?></a>&nbsp;
                    <a class="" href="<?php echo URL::to('/login','logout', Loader::helper('validation/token')->generate('logout'))?>"><i class="fa fa-sign-out"></i></a>
                <?php } else { ?>
	        		<a class="" href="<?php echo $this->url('/login')?>">Log In</a>
	            <?php } ?>
            </p>
        </div>
    </div>
</div>
</footer>
<toaster-container toaster-options="{'time-out': 3000, 'close-button':true, 'animation-class': 'toast-bottom-right'}"></toaster-container>

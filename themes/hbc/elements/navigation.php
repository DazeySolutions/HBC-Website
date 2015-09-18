<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#toggle-navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">
                <img src="<?php echo $view->getThemePath() ?>/assets/images/logo.png" height="79">
            </a>
        </div>
        <div id="toggle-navbar" class="collapse navbar-collapse">
            <?php
                $a = new GlobalArea('Header Navigation');
                $a->display();
            ?>
        </div><!--/.nav-collapse -->
    </div>
</nav>

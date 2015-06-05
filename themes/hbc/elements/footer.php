<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<footer id="bottom" class="footer">
    	<div class="row section-row dark">
        <div class="col-xs-12 col-md-10 col-md-offset-1">
    		<div class="col-xs-12 col-sm-3">
                <hr class="hidden-xs col-sm-3 h4" />
                <h4 class="col-xs-12 col-sm-6 text-center">Connect With Us</h4>
                <hr class="hidden-xs col-sm-3 h4" />
                <p class="small col-xs-12">Have a question? A prayer request?  Or something else?  Send us an email and let us know how we can help you!</p>
                <div class="contactForm">
                 <?php
                    $a = new GlobalArea('Footer Contact');
                    $a->enableGridContainer(); 
                    $a->display();
                ?>

                </div>
            </div>
            <div class="col-xs-12 col-sm-6">
                <div class="row">
                <?php
                    $a = new GlobalArea('Footer Content');
                    $a->enableGridContainer(); 
                    $a->display();
                ?>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3">
                <hr class="hidden-xs col-sm-3 h4" />
                <h4 class="col-xs-12 col-sm-6 text-center">Location</h4>
                <hr class="hidden-xs col-sm-3 h4" />
                <address class="col-xs-12">
                    <em>
                        <strong>Highland Baptist Church</strong><br>
                        511 Mount Eden Road<br>
                        P.O. Box 104<br>
                        Shelbyville KY 40066-0104<br>
                        <abbr title="Phone">P:</abbr> <a href="tel:+15026333516">502-633-3516</a><br>
                    </em>
                </address>
                <div ng-if="mapsLoaded">
                    <map  center="38.203040, -85.203772" zoom="15" styles='{{mapStyle}}' scrollwheel="false" disable-default-u-i="true" draggable="false">
                        <marker position="38.203040, -85.203772" icon="<?php echo $view->getThemePath() ?>/assets/images/church.png"></marker>
                    </map>
                </div>
            </div>
        </div>
    </div>

</footer>
<?php Loader::element('footer_required')?>

<toaster-container toaster-options="{'time-out': 3000, 'close-button':true, 'animation-class': 'toast-bottom-right'}"></toaster-container>

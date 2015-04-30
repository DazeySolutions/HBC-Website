<footer id="bottom" class="footer">
	<div class="row section-row" ng-class="{even: !evenOdd, odd: evenOdd}">
        <div class="col-xs-12 col-md-10 col-md-offset-1">
    		<div class="col-xs-12 col-sm-4">
                <hr class="hidden-xs col-sm-3 h4" />
                <h4 class="col-xs-12 col-sm-6 text-center">Connect With Us</h4>
                <hr class="hidden-xs col-sm-3 h4" />
                <p class="small">Have a question? A prayer request?  Or something else?  Send us an email and let us know how we can help you!</p>
                <div class="contactForm" data-ng-contact data-path="/forms/contact-form/ajax"></div>
            </div>
            <div class="col-xs-12 col-sm-4">
                <map  center="38.203040, -85.203772" zoom="15" styles='{{mapStyle}}'>
                    <marker position="38.203040, -85.203772" icon="$ThemeDir/assets/images/church.png"></marker>
                </map>
            </div>
            <div class="col-xs-12 col-sm-4">
            </div>
        </div>
    </div>
</footer>

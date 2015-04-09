<div class="content">
    <div class="imageSlider">
        <div class="hidden-xs col-sm-11"></div>
        <div class="hidden-xs col-sm-1 dots">
            <span>
            </span>
        </div>
    </div>
    <div data-ng-repeat="section in content" class="section-row" data-ng-class-even="'even'" data-ng-class-odd="'odd'">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div  ng-bind-html="section.Content | to_trusted"></div> 
                </div>
            </div>
        </div>
    </div>
</div>
$Form

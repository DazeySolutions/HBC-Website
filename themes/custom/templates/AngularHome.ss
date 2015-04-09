<div class="content">
    <div ng-image-slider data-path="{{locationPath}}">
        
        <!--<div class="hidden-xs col-sm-12 dots">
            <span>
            </span>
        </div>-->
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

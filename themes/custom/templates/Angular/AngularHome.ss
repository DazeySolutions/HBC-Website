<div class="content">
    <div ng-image-slider path="{{imagePath}}">
    </div>
    <div data-ng-repeat="section in content" class="row section-row" data-ng-class-even="'even'" data-ng-class-odd="'odd'">
        <div class="col-xs-12 col-md-10 col-md-offset-1">
            <div  ng-bind-html="section.Content | to_trusted"></div> 
        </div>
    </div>
</div>
$Form

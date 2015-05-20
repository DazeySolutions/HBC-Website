<div class="content">
    <!-- Start Image Slider -->
    <div ng-image-slider path="{{imagePath}}">
    </div>
    <!-- End Image Slider -->
    
    <!-- Start Content Sections -->
    <div data-ng-repeat="section in content" class="row section-row" data-ng-class-even="'even'" data-ng-class-odd="'odd'">
        <div ng-if="section.ClassName==='ContentSection'">
            <div class="col-xs-12 col-md-10 col-md-offset-1">
                <div class="col-xs-12 col-md-6 col-md-offset-3">
                    <hr class="hidden-xs col-sm-3">
                    <h2 class="col-xs-12 col-sm-6">{{section.Title}}</h2>
                    <hr class="hidden-xs col-sm-3">
                </div>
                <div dynamic="section.Content"></div> 
            </div>
        </div>
        <div ng-if="section.ClassName==='ContentSectionTwoColumn'">
            <div class="col-xs-12 col-md-10 col-md-offset-1">
                <div class="col-xs-12 col-md-6">
                    <hr class="hidden-xs col-sm-3">
                    <h2 class="col-xs-12 col-sm-6">{{section.Title}}</h2>
                    <hr class="hidden-xs col-sm-3">
                    <div dynamic="section.Content"></div> 
                </div>
                <div class="col-xs-12 col-md-6">
                    <hr class="hidden-xs col-sm-3">
                    <h2 class="col-xs-12 col-sm-6">{{section.Column2Title}}</h2>
                    <hr class="hidden-xs col-sm-3">
                    <div dynamic="section.Column2Content"></div>
                </div>
            </div>
        </div>
        <div ng-if="section.ClassName==='ContentSectionThreeColumn'">
            <div class="col-xs-12 col-md-10 col-md-offset-1">
                <div class="col-xs-12 col-md-3">
                    <hr class="hidden-xs col-sm-3">
                    <h2 class="col-xs-12 col-sm-6">{{section.Title}}</h2>
                    <hr class="hidden-xs col-sm-3">
                    <div dynamic="section.Content"></div> 
                </div>
                <div class="col-xs-12 col-md-3">
                    <hr class="hidden-xs col-sm-3">
                    <h2 class="col-xs-12 col-sm-6">{{section.Column2Title}}</h2>
                    <hr class="hidden-xs col-sm-3">
                    <div dynamic="section.Column2Content"></div> 
                </div>
                <div class="col-xs-12 col-md-3">
                    <hr class="hidden-xs col-sm-3">
                    <h2 class="col-xs-12 col-sm-6">{{section.Column3Title}}</h2>
                    <hr class="hidden-xs col-sm-3">
                    <div dynamic="section.Column3Content"></div> 
                </div>
            </div>
        </div>
    </div>
    <!-- End Content Sections -->
</div>
$Form

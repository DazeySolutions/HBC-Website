<div class="content" ng-controller="$AngularController">
    <div ng-image-slider path="{{imagePath}}">
    </div>
    <div class="row section-row even">
        <div class="col-xs-12 col-md-10 col-md-offset-1 menu-holder" style="min-height: 200px;">
           <div ng-bind-html="content | to_trusted"></div> 
        </div>
    </div>
    <div class="row section-row odd">
        <div class="col-xs-12 col-md-10 col-md-offset-1 doc-page" style="min-height: 200px;">
            <div ng-show="haveUrl()">
                <pdf-viewer delegate-handle="my-pdf-container" url="url" scale="1" show-toolbar="true" headers="{'x-you-know-whats-awesome': 'EVERYTHING'}"></pdf-viewer>
            </div>        
        </div>
    </div>
</div>
<div class="content" ng-controller="$AngularController">
    <div ng-image-slider path="{{imagePath}}">
    </div>
    <div class="row section-row even">
        <div class="col-xs-12 col-md-10 col-md-offset-1 menu-holder" style="min-height: 200px;">
            <ul class="nav nav-pills" ng-repeat="(year, months) in jsonData">
                <li role="presentation" class="dropdown active">
                    <a role="button" class="dropdown-toggle" data-toggle="dropdown">{{year}} <i class="fa fa-fw fa-chevron-down"></i></a>
                    <ul class="dropdown-menu" role="menu" ng-repeat="(month, days) in months">
                        <li><i class="fa fa-fw fa-plus"></i>{{month}}</li>
                        <li class="divider"></li>
                        <span ng-repeat="(day, link) in days">
                            <li><a href="#" ng-click="loadDoc($event, link)"><i class="fa fa-fw fa-minus"></i>{{day}}</a></li>
                        </span>
                        <li class="divider"></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="row section-row odd">
        <div class="col-xs-12 col-md-10 col-md-offset-1 doc-page" style="min-height: 200px;">
            <div ng-if="haveUrl()">
                <pdf-viewer delegate-handle="my-pdf-container" url="url" scale="1" show-toolbar="true" headers="{'x-you-know-whats-awesome': 'EVERYTHING'}"></pdf-viewer>
            </div>        
        </div>
    </div>
</div>
<div class="content">
    <div ng-image-slider path="{{imagePath}}">
    </div>
    <div class="row section-row even">
        <div class="col-xs-12 col-md-10 col-md-offset-1 menu-holder" style="min-height: 200px;">
            <div class="col-xs-12 col-md-6 col-md-offset-3">
                <hr class="hidden-xs col-sm-3" />
                <h2 class="col-xs-12 col-sm-6">{{title}}</h2>
                <hr class="hidden-xs col-sm-3" />
            </div>
            <div class="col-xs-12 col-md-6 col-md-offset-3">
                <div class="row">
                    <div class="col-xs-12">
                        <ul class="nav nav-pills" ng-repeat="(year, months) in documents">
                            <li role="presentation" class="dropdown">
                                <a role="button" class="dropdown-toggle" data-toggle="dropdown">{{year}} <i class="fa fa-fw fa-chevron-down"></i></a>
                                <ul class="dropdown-menu" role="menu" ng-repeat="(month, days) in months">
                                    <li><a><i class="fa fa-fw fa-plus"></i>{{getMonth(month)}}</a></li>
                                    <li class="divider"></li>
                                    <li ng-repeat="(day, link) in days"><a ng-click="loadDoc(link)"><i class="fa fa-fw fa-minus"></i>{{day}}</a></li>
                                    <li class="divider"></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row section-row odd">
        <div class="col-xs-12 col-md-10 col-md-offset-1 doc-page" style="min-height: 200px;">
            <div ng-if="haveUrl">
                <div class="row pdf">
                    <pdf-viewer delegate-handle="my-pdf-container" url="" scale="1" show-toolbar="false" headers="{'x-you-know-whats-awesome': 'EVERYTHING'}">
                    </pdf-viewer>
                    <div class="col-xs-12 col-md-6 col-md-offset-3">
                        <div class="row">
                            <button class="btn btn-info col-xs-3" ng-click="goBack()" ng-disable="disablePrev()">Previous</button>
                            <span class="col-xs-6">
                                <div class="row">
                                    <p class="col-xs-12 col-md-8 col-md-offset-2 text-center">Page {{curPage}} of {{totalPages}}</p>
                                </div>
                            </span>
                            <button class="btn btn-primary col-xs-3" ng-click="goNext()" ng-disable="disableNext()">Next</button>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>
</div>
<% include Head %>
<body data-ng-app="hbcWebApp" ng-controller="$AngularController">
	<% include Header %>
    <div class="container-fluid fixed-margin" ui-view>
        <div class="content">
            <div class="row section-row even">
                <div class="col-xs-12 col-md-10 col-md-offset-1" style="min-height: 200px;">
                    <div class="col-xs-12 col-md-6 col-md-offset-3">
                        <hr class="hidden-xs col-sm-3">
                        <h2 class="col-xs-12 col-sm-6">Connecting</h2>
                        <hr class="hidden-xs col-sm-3">
                    </div>
                    <div class="col-xs-12 col-md-8 col-md-offset-2">
                        <ul class="nav nav-pills">
                            <% loop OrganizeDocuments %>
                            <li role="presentation" class="dropdown"> 
                                <span class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">$Year<span class="fa fa-fw fa-chevron-down"></span></span>
                                <ul class="dropdown-menu" role="menu">
                                    <% loop Months %>
                                    <li>
                                        <i class="fa fa-fw fa-plus"></i>$Month 
                                    </li>
                                    <% loop Days %>
                                    <li><a href="$Link"><i class="fa fa-fw fa-minus"></i>$Num</a></li>
                                    <% end_loop %>
                                    <li class="divider"></li>
                                    <% end_loop %>
                                </ul>
                            </li>
                            <% end_loop %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <% include Connection %>
        <% include Footer %>
    </div>
</body>

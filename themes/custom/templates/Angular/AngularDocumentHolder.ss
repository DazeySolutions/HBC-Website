<div class="content" ng-controller="$AngularController">
    <div ng-image-slider path="/home/ajaxImages">
    </div>
    <div class="row section-row even">
    <ul class="nav nav-pills">
    
        <% loop OrganizeDocuments %>
            <li role="presentation" class="dropdown"> 
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">$year<span class="fa fa-fw fa-chevron-down"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <% loop months %>
                    <li>
                      <i class="fa fa-fw fa-plus-square-o"></i>$month 
                    </li>
                    <% loop days %>
                    <li><a href="$link"><i class="fa fa-fw fa-minius-square-o"></i>$num</a></li>
                    <% end_loop %>
                    <li class="divider"></li>
                    <% end_loop %>
                </ul>
            </li>
        <% end_loop %>
        
    </ul>
    </div>
</div>
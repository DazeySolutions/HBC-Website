<% include Head %>
<body data-ng-app="hbcWebApp" ng-controller="SiteController">
	<% include Header %>
    <div class="container-full" ui-view>
        <div class="content">
            $Content
        </div>
    </div>
    <% include Footer %>
</body>
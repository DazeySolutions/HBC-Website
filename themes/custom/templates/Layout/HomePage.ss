<% include Head %>
<body data-ng-app="hbcWebApp" ng-controller="SiteController">
	<% include Header %>
    <div class="container-full" ui-view>
        <div class="content">
        </div>
    </div>
    <div class="container-full">
        <% include Connection %>
        <% include Footer %>
    </div>
</body>
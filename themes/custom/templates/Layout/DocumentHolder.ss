<% include Head %>
<body data-ng-app="hbcWebApp" ng-controller="SiteController">
	<% include Header %>
    <% loop DocumentPages %>
        <div style="height:50px; width: 100%; color: red;"></div>
    <% end_loop %>
    <div class="container-fluid fixed-margin" ui-view>
        <div class="content">
        </div>
    </div>
    <div class="container-fluid">
        <% include Connection %>
        <% include Footer %>
    </div>
</body>

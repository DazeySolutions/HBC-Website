<div id="alerts" class="container">
<% loop $AlertsConfig.Alerts %>
    <% if $Start.IsToday %>
        <div class="alert alert-dismissible alert-$Severity col-xs-6 col-xs-offset-3 " role="alert">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true"><i class="fa fa-times"></i></button>
                <strong>$Title</strong> $Description
        </div>
    <% end_if %>
<% end_loop %>
</div>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">$SiteConfig.Logo.SetWidth(100)</a>
        </div>
        <div class="collapse navbar-collapse" id="nav-collapse">
            <ul class="nav navbar-nav navbar-right">
                <% include Navigation %>
            </ul>
        </div>
    </div>
</nav>

<% if $ToplevelController %>
	<span class="icon-{$ToplevelController.MenuCurrentItem.Code.LowerCase}"></span>
<% else_if $Controller %>
	<span class="icon-{$Controller.MenuCurrentItem.Code.LowerCase}"></span>
<% else %>
	<span class="icon-{$MenuCurrentItem.Code.LowerCase}"></span>
<% end_if %>

<% loop $Breadcrumbs %>
	<% if $Last %>
		<span class="cms-panel-link crumb last">$Title.XML</span>
	<% else %>
		<a class="cms-panel-link crumb" href="$Link">$Title.XML</a>
		<span class="sep">/</span>
	<% end_if %>
<% end_loop %>
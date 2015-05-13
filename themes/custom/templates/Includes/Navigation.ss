<% loop $Menu(1) %>
<li ui-sref-active="active">
    <a ui-sref="site({page:'<% if $AngularLink == '' %>home<% else %>$AngularLink<% end_if %>',controller:'$AngularController'})" title="$Title.XML"><p bs-collapse-toggle>$MenuTitle.XML</p></a>
</li>
<% end_loop %>

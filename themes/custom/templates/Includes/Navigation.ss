<% loop $Menu(1) %>
<li class="<% if $LinkOrSection = section %>active<% end_if %>">
    <a ui-sref="site({page:'<% if $AngularLink == '' %>home<% else %>$AngularLink<% end_if %>',controller:'$AngularController'})" title="$Title.XML" data-ng-click="angular.element('.active').removeClass('active'); angular.element(this).addClass('active');"><p>$MenuTitle.XML</p></a>
</li>
<% end_loop %>

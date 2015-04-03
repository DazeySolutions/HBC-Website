<% loop $Menu(1) %>
<li class="<% if $LinkOrSection = section %>active<% end_if %>">
    <a href="$Link" title="$Title.XML"><p>$MenuTitle.XML</p></a>
</li>
<% end_loop %>

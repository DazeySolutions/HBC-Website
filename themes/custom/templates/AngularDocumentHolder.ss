<% if $Documents.Exists %>
    <% loop $Documents %>
        <%= $Document.Filename %>
    <% end_loop %>
<% else %>
    <p>There are no Documents</p>
<% end_if %>
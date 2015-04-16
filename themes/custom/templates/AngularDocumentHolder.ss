<% if $Documents.Exists %>
    <% loop getDocuments %>
        <%= $Document.getFilename %>
    <% end_loop %>
<% else %>
    <p>There are no Documents</p>
<% end_if %>
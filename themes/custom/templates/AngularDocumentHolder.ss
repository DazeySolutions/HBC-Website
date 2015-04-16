<div class="content" ng-controller="$AngularController">
    <% loop getDocumentPages %>
        $Document.getFilename()
    <% end_loop %>
</div>
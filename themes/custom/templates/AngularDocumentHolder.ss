<div class="content" ng-controller="$AngularController">
    <div ng-image-slider path="/home/ajaxImages">
    </div>
    <div class="row section-row even">
        <% loop getDocumentPages %>
            $Document.getFilename()
        <% end_loop %>
    </div>
</div>
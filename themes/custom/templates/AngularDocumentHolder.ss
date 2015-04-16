<div class="content" ng-controller="$AngularController">
    <div ng-image-slider path="{{imagePath}}">
    </div>
    <div class="row section-row even">
        <% loop getDocumentPages %>
            $Document.getFilename()
        <% end_loop %>
    </div>
</div>
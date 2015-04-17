<div class="content" ng-controller="$AngularController">
    <div ng-image-slider path="/home/ajaxImages">
    </div>
    <div class="row section-row even">
        <% loop $OrganizeDocuments %>
            $OrganizeDocuments
        <% end_loop %>
    </div>
</div>
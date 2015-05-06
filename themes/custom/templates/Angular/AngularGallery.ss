<div class="content">
    <div ng-image-preview image="{{selectedImage}}"></div>
    <div class="row section-row even">
        <div class="col-xs-12 col-md-10 col-md-offset-1">
            <div class="col-xs-12 col-md-6 col-md-offset-3">
                <hr class="hidden-xs col-sm-3">
                <h2 class="col-xs-12 col-sm-6">$GalleryTitle</h2>
                <hr class="hidden-xs col-sm-3">
            </div>
            <div class="col-xs-12">
            <% loop getSlideShowImages %>
                <div class="col-xs-12 col-sm-6 col-md-2">
                    <div class="image-padding">
                        <img src="$Image.SetWidth(600).Filename" ng-click="select($event)">
                    </div>
                </div>
            <% end_loop %>
            </div>
        </div>
    </div>
</div>


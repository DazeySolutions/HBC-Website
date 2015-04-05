<div class="row">
    <div class="col-xs-12">
        <h1>$GalleryTitle</h1>
    </div>
</div>

<div class="row">
<% loop getSlideShowImages %>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="image-padding">
            $Image.SetWidth(400)
        </div>
    </div>
<% end_loop %>
</div>
    
</section>

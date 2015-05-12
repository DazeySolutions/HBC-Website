<?php
class GalleryHolder extends Page{
    private static $icon = "mysite/images/icon/galleries.png";
    private static $allowed_children = array(
	    "GalleryPage"	
	);
	static $defaults = array(
        'ShowInMenus' => false
    );
}

class GalleryHolderController extends Page_Controller{
    
}
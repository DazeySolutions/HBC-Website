<?php

class CustomHTMLEditorField extends DataExtension {

	public function updateMediaForm(Form $form) {
		$page_id = $_SESSION['CMSMain']['currentPage'];
		$page_urlsegment = SiteTree::get()->byID($page_id)->URLSegment;

		$computerUploadField = $form->Fields()->dataFieldByName('AssetUploadField');
		$computerUploadField->setFolderName(sprintf("%s/pages/%s-%s", Upload::$uploads_folder, $page_id, $page_urlsegment));
	}
 
}
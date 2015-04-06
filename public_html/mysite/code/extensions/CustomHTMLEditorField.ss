<?php

class CustomHTMLEditorField extends DataExtension {

	public function updateMediaForm(Form $form) {
		$tabSet = $form->Fields()->fieldByName('MediaFormInsertMediaTabs');
		$tabSet->removeByName('FromComputer');
	}
 
}
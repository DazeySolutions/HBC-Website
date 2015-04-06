<?php

class CustomHTMLEditorField extends DataExtension {

	public function updateMediaForm(Form $form) {
		$form->Fields()->removeByName('FromComputer');
		$form->Fields()->removeByName('FromWeb');
	}

 
}
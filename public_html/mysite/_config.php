<?php

global $project;
$project = 'mysite';

global $database;
$database = '';

require_once('conf/ConfigureFromEnv.php');
// Set the site locale
i18n::set_locale('en_US');

HtmlEditorConfig::get('cms')->setOption('content_css','themes/custom/css/main.css');
HtmlEditorConfig::get('cms')->setOption('body_class','section-row odd');
Object::add_extension('HtmlEditorField_Toolbar', 'CustomHTMLEditorField');
<?php

global $project;
$project = 'mysite';

global $database;
$database = '';

require_once('conf/ConfigureFromEnv.php');
// Set the site locale
i18n::set_locale('en_US');

HtmlEditorConfig::get('cms')->setOption('content_css','themes/cusom/css/main.css');
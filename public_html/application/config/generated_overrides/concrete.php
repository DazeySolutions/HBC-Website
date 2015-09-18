<?php

/**
 * -----------------------------------------------------------------------------
 * Generated 2015-09-03T16:51:07-04:00
 *
 * @item      misc.do_page_reindex_check
 * @group     concrete
 * @namespace null
 * -----------------------------------------------------------------------------
 */
return array(
    'white_label' => array(
        'background_image' => 'none',
    ),
    'site' => 'Highland Baptist Church',
    'version_installed' => '5.7.5.1',
    'misc' => array(
        'access_entity_updated' => 1436446275,
        'do_page_reindex_check' => false,
        'latest_version' => '5.7.5.1',
    ),
    'cache' => array(
        'blocks' => false,
        'assets' => false,
        'theme_css' => false,
        'overrides' => false,
        'pages' => '0',
        'full_page_lifetime' => 'default',
        'full_page_lifetime_value' => null,
    ),
    'theme' => array(
        'compress_preprocessor_output' => false,
    ),
    'permissions' => array(
        'model' => 'advanced',
    ),
    'user' => array(
        'profiles_enabled' => true,
        'registration' => array(
            'email_registration' => true,
            'type' => 'manual_approve',
            'captcha' => true,
            'enabled' => true,
            'approval' => true,
            'validate_email' => false,
            'notification' => '1',
            'notification_email' => 'mark@dazeysolutions.com',
        ),
        'gravatar' => array(
            'enabled' => true,
            'max_level' => 'g',
            'image_set' => '404',
        ),
    ),
    'editor' => array(
        'concrete' => array(
            'enable_filemanager' => '1',
            'enable_sitemap' => '1',
        ),
        'plugins' => array(
            'selected' => array(
                'undoredo',
                'underline',
                'concrete5lightbox',
                'specialcharacters',
                'table',
                'fontfamily',
                'fontsize',
                'fontcolor',
            ),
        ),
    ),
    'seo' => array(
        'canonical_url' => '',
        'canonical_ssl_url' => '',
        'redirect_to_canonical_url' => 0,
        'url_rewriting' => 1,
    ),
    'debug' => array(
        'detail' => 'debug',
        'display_errors' => true,
    ),
);

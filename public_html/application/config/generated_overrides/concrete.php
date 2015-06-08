<?php

/**
 * -----------------------------------------------------------------------------
 * Generated 2015-06-07T18:44:34-04:00
 *
 * @item      misc.latest_version
 * @group     concrete
 * @namespace null
 * -----------------------------------------------------------------------------
 */
return array(
    'site' => 'Highland Baptist Church',
    'version_installed' => '5.7.4.2',
    'misc' => array(
        'access_entity_updated' => 1433618443,
        'do_page_reindex_check' => false,
        'login_redirect' => 'HOMEPAGE',
        'login_redirect_cid' => 0,
        'login_admin_to_dashboard' => 1,
        'latest_version' => '5.7.4.2'
    ),
    'cache' => array(
        'blocks' => false,
        'assets' => false,
        'theme_css' => false,
        'overrides' => false,
        'pages' => '0',
        'full_page_lifetime' => 'default',
        'full_page_lifetime_value' => null
    ),
    'theme' => array(
        'compress_preprocessor_output' => false
    ),
    'editor' => array(
        'concrete' => array(
            'enable_filemanager' => '1',
            'enable_sitemap' => '1'
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
                'fontcolor'
            )
        )
    ),
    'user' => array(
        'registration' => array(
            'email_registration' => true,
            'type' => 'manual_approve',
            'captcha' => true,
            'enabled' => true,
            'approval' => true,
            'validate_email' => false,
            'notification' => '1',
            'notification_email' => 'mark@dazeysolutions.com'
        )
    ),
    'seo' => array(
        'canonical_url' => '',
        'canonical_ssl_url' => '',
        'redirect_to_canonical_url' => 0,
        'url_rewriting' => 1
    ),
    'permissions' => array(
        'model' => 'advanced'
    )
);

<?php defined('C5_EXECUTE') or die("Access Denied.");

$navigationTypeText = ($navigationType == 0) ? 'arrows' : 'pages';

$c = Page::getCurrentPage();

if ($c->isEditMode()) { ?>

    <div class="ccm-edit-mode-disabled-item" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>">

        <div style="padding: 40px 0px 40px 0px"><?php echo t('Events disabled in edit mode.')?></div>

    </div>

<?php  } else { ?>
<div class="ng-church-event" base-path="<?php echo $eventURL ?>"></div>
<?php } ?>

<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php if ($linkURL) { 
    if($linkType > 2){ 
        if($linkType == 3){ ?>
            <a href="tel:+<?php echo $linkURL?>">
        <?php } else { ?>
            <a href="mailto:<?php echo $linkURL?>">
        <?php } ?>
    <?php } else { ?>
        <a href="<?php echo $linkURL?>">
    <?php } ?>
<?php } ?>
<div class="ccm-block-feature-item-hover-wrapper" data-toggle="tooltip" data-placement="bottom" title="<?php echo h(strip_tags($paragraph))?>">
    <div class="ccm-block-feature-item-hover">
        <div class="ccm-block-feature-item-hover-icon"><i class="fa fa-<?php echo $icon?> fa-fw fa-3x"></i></div>
    </div>
    <div class="ccm-block-feature-item-hover-title"><?php echo h($title)?></div>
</div>

<?php if ($linkURL) { ?>
    </a>
<?php } ?>

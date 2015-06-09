<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<div id="ccm-block-social-links<?php echo $bID?>" class="ccm-block-social-links">
    <ul class="list-inline">
    <?php foreach($socialData as $data) {
        ?>
        <li><a href="<?php echo $data['url'] ?>"><i class="fa fa-fw fa-<?php echo $data['icon'] ?>"></i></a></li>
    <?php } ?>
    </ul>
</div>

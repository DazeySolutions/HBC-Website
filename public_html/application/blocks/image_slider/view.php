<?php defined('C5_EXECUTE') or die("Access Denied.");
$navigationTypeText = ($navigationType == 0) ? 'arrows' : 'pages';
$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Image Slider disabled in edit mode.')?></div>
    </div>
<?php  } else { ?>
<script>
    var imageApp = angular.module("hbcAPP");
	imageApp.controller('SlideController', ['$scope', function($scope){
        $scope.images = [];
        <?php if(count($rows) > 0) { ?>
            <?php foreach($rows as $row) { ?>
                <?php
                $f = File::getByID($row['fID'])
                ?>
            $scope.images.push({
                'link': '<?php echo $row['linkURL'] ?>',
                'title': '<?php echo $row['title'] ?>',
                'image': '<?php echo $f->getRelativePath() ?>',
                'description': '<?php echo $row['description'] ?>'
            });
            <?php } ?>
        <?php } else { ?>
        <?php } ?>
    }]);
</script>
<div ng-controller="SlideController">
    <div ng-image-slider data="images">
    </div>
</div>
<?php } ?>

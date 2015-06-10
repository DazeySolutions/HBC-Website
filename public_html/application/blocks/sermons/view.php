<?php defined('C5_EXECUTE') or die("Access Denied.");

$navigationTypeText = ($navigationType == 0) ? 'arrows' : 'pages';

$c = Page::getCurrentPage();

if ($c->isEditMode()) { ?>

    <div class="ccm-edit-mode-disabled-item" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>">

        <div style="padding: 40px 0px 40px 0px"><?php echo t('Events disabled in edit mode.')?></div>

    </div>

<?php  } else { ?>
<script>
    var appDependencies = ['ngChurchManagement'];
    var sermonApp<?php echo $bID ?> = angular.module("sermonApp<?php echo $bID ?>", appDependencies);
    angular.isUndefinedOrNull = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null;
    };
    angular.isUndefinedOrNullOrEmpty = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null || value === "";
    };
</script>
<div ng-app="eventApp<?php echo $bID ?>">
	<div ng-church-sermon data-base-path="<?php echo $sermonURL ?>"></div>
</div>
<?php } ?>

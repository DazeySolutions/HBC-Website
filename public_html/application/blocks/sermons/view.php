<?php defined('C5_EXECUTE') or die("Access Denied.");

$navigationTypeText = ($navigationType == 0) ? 'arrows' : 'pages';

$c = Page::getCurrentPage();

if ($c->isEditMode()) { ?>

    <div class="ccm-edit-mode-disabled-item" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>">

        <div style="padding: 40px 0px 40px 0px"><?php echo t('Sermons disabled in edit mode.')?></div>

    </div>

<?php  } else { ?>
<script>
	function notLoaded(){
		try{
			angular.module("ngChurchManagement");
			return false;
		}catch(err){
			return true;
		}
	}
	while(notLoaded()){
		setTimeout(notLoaded(), 3000);
	}
	var appDependencies = ['ngChurchManagement'];
	var sermonApp<?php echo $bID ?> = angular.module("sermonApp<?php echo $bID ?>", appDependencies);
    angular.isUndefinedOrNull = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null;
    };
    angular.isUndefinedOrNullOrEmpty = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null || value === "";
    };
    sermonApp<?php echo $bID ?>.controller('sermonController<?php echo $bID ?>', ['$scope', '$compile', function($scope, $compile){
    	$scope.init = function init(){
    		  var item = angular.element('<div class="ng-church-event" base-path="<?php echo $sermontURL ?>"></div>');
		      var el = $compile( item )( $scope );
		      
		      //where do you want to place the new element?
		      angular.element("#content<?php echo $bID?>").append(item);
		      	
    	};
    	
    	$scope.init();
    }]);
</script>
<div ng-app="sermonApp<?php echo $bID ?>" ng-controller="sermonController<?php echo $bID ?>">
	<div id="content<?php echo $bID?>"></div>
</div>
<?php } ?>

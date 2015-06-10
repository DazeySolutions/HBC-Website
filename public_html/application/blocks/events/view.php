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
	var eventApp<?php echo $bID ?> = angular.module("eventApp<?php echo $bID ?>", appDependencies);
	angular.isUndefinedOrNull = function undefinedOrNull(value){
    	return angular.isUndefined(value) || value === null;
	};
	angular.isUndefinedOrNullOrEmpty = function undefinedOrNull(value){
    	return angular.isUndefined(value) || value === null || value === "";
	};
 	eventApp<?php echo $bID ?>.controller('eventController<?php echo $bID ?>', ['$scope', '$compile', function($scope, $compile){
    	$scope.init = function init(){
    		  var item = angular.element('<div class="ng-church-event" base-path="<?php echo $eventURL ?>"></div>');
		      var el = $compile( item )( $scope );
		      
		      //where do you want to place the new element?
		      angular.element("#content<?php echo $bID?>").html(item);
		      	
    	};
    	
    	$scope.init();
    }]);
</script>
<div id="event" ng-controller="eventController<?php echo $bID ?>">
	<div id="content<?php echo $bID?>">
		<div class="row">
	       <div class="col-xs-12">
	           <div class="spinner">
	               <div class="rect1"></div>
	               <div class="rect2"></div>
	               <div class="rect3"></div>
	               <div class="rect4"></div>
	               <div class="rect5"></div>
	           </div>
	       </div>
	    </div>
	</div>
</div>
<script>
	angular.bootstrap(document.getElementById("event"), ['"eventApp<?php echo $bID ?>"']);
</script>
<?php } ?>

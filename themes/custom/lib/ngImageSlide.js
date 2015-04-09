(function(angular, factory) {
    'use strict';

    if (typeof define === 'function' && define.amd) {
        define(['angular'], function(angular) {
            return factory(angular);
        });
    } else {
        return factory(angular);
    }
}(window.angular || null, function(angular) {
    'use strict';
	
	var app = angular.module('ngImageSlider', []);
	
	app.controller('ngImageSliderController', ['$scope', '$timeout', '$http', '$window',
		function($scope, $timeout, $http, $window){
			$scope.images = [];
			$scope.curImageNum = 0;
			$scope.divHeight = $window.innerWidth/2.39;
			$scope.init = function init(){
				$http.get($scope.path+"?width="+$window.innerWidth)
					.success(function(data){
						$scope.images = data;
						if($scope.images.length > 1){
							$timeout(function(){
								var tempNum = $scope.curImageNum + 1;
								if(tempNum>=$scope.images.length){
									tempNum = 0;
								}
								$scope.curImageNum = tempNum;
							},7000);
						}
					});
			};
			
			$scope.imageStyle = function imageStyle(){
                var data = {
                    "background-size":"cover",
                    "height":$scope.divHeight+"px"
                };
                if($scope.images.length > 0 && ($scope.images[$scope.curImageNum].Filename !== '' || $scope.images[$scope.curImageNum].Filename !== null || $scope.images[$scope.curImageNum].Filename !== undefined)){
                    data["background-image"] = "url('"+$scope.images[$scope.curImageNum].Filename+"')";
                }
                
                return data;
			};
			
			$scope.init();
		}
	]);
	
	
	app.directive('ngImageSlider', ['$q', '$parse',
		function($q, $parse) {
			return {
				restrict: 'AEC',
				scope: {
					path: '@'
				},
				controller: 'ngImageSliderController',
				templateUrl: 'imageslide.html'
			};
		}]);
	app.run(['$templateCache', function ($templateCache) {
		$templateCache.put('imageslide.html', 
			'<div class="imageSlider" ng-style="imageStyle()">'+
			'	<div class="hidden-xs col-xs-12 dots">'+
			'		<span>'+
			'			<i data-ng-repeat="image in images track by $index" class="fa fa-fw" data-ng-class="$index==curImageNum ?\'fa-circle\':\'fa-circle-o\'"></i>'+
			'		</span>'+
			'	</div>'+
			'</div>'
            );
        }]);
}));
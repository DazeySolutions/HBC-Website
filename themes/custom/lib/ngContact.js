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
	
	var app = angular.module('ngContact', []);
	
	app.controller('ngContactController', ['$scope', '$interval', '$http', '$window',
		function($scope, $interval, $http, $window){
			$scope.contact = "";
			$scope.init = function init(){
				$http.get($scope.path)
					.success(function(data){
                        $scope.contact = data;
					});
			};
			$scope.init();
			
			$interval(function(){
                $http.get($scope.path.replace("ajax","ping"));
			}, 180*1000);
			
			$scope.$watch('contact', function(){
                angular.element("div:has(>.other-subject)").hide();
				angular.element(".subject-select").change(function(){
                    if(angular.element(".subject-select")[0].value === 'Other'){
                        angular.element("div:has(>.other-subject)").show();
                    }
                    else
                    {
                        angular.element("div:has(>.other-subject)").hide();
                    }
                });
                angular.element(".contactForm button[type=submit]").click(function(e){
                    e.preventDefault();
                    var params = '';
                    var obParams = 
                    $http({
                        method: 'POST',
                        url: $scope.path.replace("ajax","Form"),
                        data: angular.element(".contactForm #Form_Form").serialize(),
                        headers: {'Content-Type': 'application/x-www-form-urlencoded'}
                    }).success(function(data){
                        $scope.contact = data;
                    });
                });
			});
		}
	]);
	
	app.filter('to_trusted', ['$sce', function($sce){
        return function(text) {
            return $sce.trustAsHtml(text);
        };
    }]);
    
	app.directive('ngContact', ['$q', '$parse',
		function($q, $parse) {
			return {
				restrict: 'AEC',
				scope: {
					path: '@'
				},
				controller: 'ngContactController',
				templateUrl: 'contact.html'
			};
		}]);
	app.run(['$templateCache', function ($templateCache) {
		$templateCache.put('contact.html', 
            '<div class="col-xs-12">'+
            '        <div  ng-bind-html="contact | to_trusted"></div>'+
            '</div>'
            );
        }]);
}));
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
						angular.element("#Form_Form #EditableDropdown4 select").change(function(){
                            if(angular.element("#Form_Form #EditableDropdown4 select")[0].value === 'Other'){
                                angular.element("#Form_Form #EditableTextField5").show();
                            }
                            else
                            {
                                angular.element("#Form_Form #EditableTextField5").hide();
                            }
                        });
					});
			};
			$scope.init();
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
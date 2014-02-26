'use strict';

angular.module('docsSimpleDirective', [])
    .controller('Ctrl', function($scope) {
      $scope.user = {
        name: 'Naomi',
        address: '1600 Amphitheatre'
      };
    })
    .directive('myCustomer', function() {
      return {
        templateUrl: 'app/partials/current_user.html'
      };
    });

angular.module('friendLibApp.directives', [])
       .directive('CurrentUser', function(injectables) {
        return function(scope, element, attrs) {
          console.log("am I doing it?");
        };
       });
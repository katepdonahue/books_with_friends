'use strict';

var friendLibControllers = angular.module('friendLibControllers', []);

friendLibControllers.controller('UserListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('localhost:3000/users').success(function(data) {
      $scope.users = data;
    });

    $scope.orderProp = 'name';

  }]);
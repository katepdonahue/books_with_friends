'use strict';

var friendLibControllers = angular.module('friendLibControllers', []);

friendLibControllers.controller('UserListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/users.json').success(function(data) {
      $scope.users = data;
    });

    $scope.orderProp = 'name';

  }]);

friendLibControllers.controller('UserDataCtrl', [
  '$scope',
  '$http',
  '$routeParams'
  function($scope, $http, $routeParams) {
    $http.get('/users/' + $routeParams.id + '.json').success(function(data) {
      $scope.user = data[0];
    });
  }]);
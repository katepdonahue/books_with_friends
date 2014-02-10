'use strict';

var friendLibControllers = angular.module('friendLibControllers', []);

friendLibControllers.controller('UserListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/users.json').success(function(data) {
      $scope.users = data;
    });

    $scope.orderProp = 'username';

  }]);

friendLibControllers.controller('UserDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams'
  function($scope, $http, $routeParams) {
    $http.get('/users/' + $routeParams.id + '.json').success(function(data) {
      $scope.user = data[0];
    });
  }]);

friendLibControllers.controller('BookListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/books.json').success(function(data) {
      $scope.books = data;
    });

    $scope.orderProp = 'name';

  }]);

friendLibControllers.controller('BookDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams'
  function($scope, $http, $routeParams) {
    $http.get('/books/' + $routeParams.id + '.json').success(function(data) {
      $scope.book = data[0];
    });
  }]);
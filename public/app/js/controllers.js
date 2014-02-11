'use strict';

var friendLibControllers = angular.module('friendLibControllers', []);

friendLibControllers.controller('HomeCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/books.json').success(function(data) {
      $scope.books = data;
    });

    $scope.orderProp = 'title';

  }]);

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
  '$routeParams',
  function($scope, $http, $routeParams) {
    $http.get('/users/' + $routeParams.id + '.json').success(function(data) {
      $scope.user = data;
    });
  }]);

friendLibControllers.controller('BookListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/books.json').success(function(data) {
      $scope.books = data;
    });

    $scope.orderProp = 'title';

  }]);

friendLibControllers.controller('BookDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  function($scope, $http, $routeParams) {
    $http.get('/books/' + $routeParams.id + '.json').success(function(data) {
      $scope.book = data;
    });
  }]);

friendLibControllers.controller('AuthorListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/authors.json').success(function(data) {
      $scope.authors = data;
    });

    $scope.orderProp = 'last_name';

  }]);

friendLibControllers.controller('AuthorDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  function($scope, $http, $routeParams) {
    $http.get('/authors/' + $routeParams.id + '.json').success(function(data) {
      $scope.author = data;
    });
  }]);
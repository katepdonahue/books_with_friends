'use strict';

var friendLibControllers = angular.module('friendLibControllers', []);

friendLibControllers.controller('HomeCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/api/books.json').success(function(data) {
      $scope.books = data;
    });

    $scope.orderProp = 'title';

  }]);

friendLibControllers.controller('UserListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/api/users.json').success(function(data) {
      $scope.users = data;
    });

    $scope.orderProp = 'username';

  }]);

friendLibControllers.controller('UserDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  function($scope, $http, $routeParams) {
    $http.get('/api/users/' + $routeParams.id + '.json').success(function(data) {
      $scope.user = data;
    });
  }]);

friendLibControllers.controller('BookListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/api/books.json').success(function(data) {
      if(data["email"]) {
        $scope.books = data["books"];
        $scope.user = {id: data["id"], email: data["email"], username: data["username"]};

      }
      else {
        $scope.books = data;
      }
    });

    $scope.orderProp = 'title';

  }]);

friendLibControllers.controller('BookDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  function($scope, $http, $routeParams) {
    $http.get('/api/books/' + $routeParams.id + '.json').success(function(data) {
      $scope.book = data;
      $http.get('https://www.googleapis.com/books/v1/volumes?q=isbn:' + data.isbn).success(function(data) {
        $scope.pic = data["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"];
      });
    });
  }]);

friendLibControllers.controller('AuthorListCtrl', [
  '$scope',
  '$http',
  function($scope, $http) {
    $http.get('/api/authors.json').success(function(data) {
      $scope.authors = data;
    });

    $scope.orderProp = 'last_name';

  }]);

friendLibControllers.controller('AuthorDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  function($scope, $http, $routeParams) {
    $http.get('/api/authors/' + $routeParams.id + '.json').success(function(data) {
      $scope.author = data;
      $scope.books = data.books;
    });
  }]);

friendLibControllers.controller('UsersBookCtrl', [
  '$scope',
  '$http',
  '$routeParams', 
  function($scope, $http, $routeParams) {
    $http.get('/api/users/' + $routeParams.user_id + '/books.json').success(function(data) {
      $scope.books = data;
    });

    $scope.orderProp = 'title';

  }]);

friendLibControllers.controller('NewBookCtrl', []);


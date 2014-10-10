@forum = angular.module('forum', ['ngRoute', 'ngResource'])

@forum.config(["$routeProvider", ($routeProvider) ->
  $routeProvider
  .when("/branches",
    templateUrl: '../templates/branches/index.html',
    controller: 'IndexCtrl'
  ).when('/branches/new',
    templateUrl: '../templates/branches/new.html',
    controller: 'NewCtrl'
  ).when('/branches/:id',
    templateUrl: '../templates/branches/show.html',
    controller: 'ShowCtrl'
  ).otherwise(
    templateUrl: '../templates/home.html',
    controller: 'HomeCtrl'
  )
])
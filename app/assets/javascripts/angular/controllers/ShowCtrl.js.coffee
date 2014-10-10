@forum.controller 'ShowCtrl', ['$scope', '$location', '$http', '$routeParams', ($scope, $location, $http, $routeParams) ->
  $http.get("./branches/#{$routeParams.id}.json").success((data) ->
    $scope.branch = data
  )

  $scope.viewBranches = ->
    $location.url "/branches"
]

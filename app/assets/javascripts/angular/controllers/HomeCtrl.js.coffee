@forum.controller 'HomeCtrl', ['$scope', '$location', ($scope, $location) ->
  $scope.viewBranches = ->
    $location.url "/branches"
]
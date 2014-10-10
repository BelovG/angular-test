@forum.controller 'IndexCtrl', ['$scope', '$location', '$http', '$resource', ($scope, $location, $http, $resource) ->
  $scope.branches = []
  $http.get('./branches.json').success((data) ->
    $scope.branches = data
  )

  $scope.viewBranch = (id) ->
    $location.url "/branches/#{id}"

  $scope.viewHome = ->
    $location.url "/"

  $scope.viewNew = ->
    $location.url "/branches/new"

  $scope.viewBranches = ->
    $location.url "/branches"

  Branch = $resource('/branches/:id.json', {id:'@id'}, { update: {method:'PUT' } })

  $scope.CreateBranch = ->
    branch = new Branch
    branch.name = $scope.name
    branch.content = $scope.content
    branch.$save()
    $scope.branches.push(branch)

  $scope.deleteBranch = (id, index) ->
    branch = new Branch
    branch.$delete({id: id})

    $scope.branches.splice(index, 1)

  $scope.updateBranch = (branch) ->
#    edit_branch = Branch.get({id: branch.id})
#    edit_branch.name = branch.name
#    edit_branch.content = branch.content
#    edit_branch.$save()

    edit_branch = Branch.get({id: branch.id}, ->
      edit_branch.name = branch.name
      edit_branch.content = branch.content
      edit_branch.$update()
    )


]
angular.module('main.controllers').controller(
  'HeaderController',
  ['$scope', 'apiTokenInitializer',
  ($scope, apiTokenInitializer) ->
    $scope.apiToken = apiTokenInitializer
    $scope.user = null
    $scope.init = (user_object) ->
      $scope.user = user_object
  ]
)

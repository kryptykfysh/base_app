angular.module('main.controllers').controller(
  'MainController',
  ['$scope', 'apiTokenInitializer',
  ($scope, apiTokenInitializer) ->
    $scope.apiToken = apiTokenInitializer
  ]
)

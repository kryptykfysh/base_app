angular.module('main.controllers').controller(
  'WrapperController',
  ['$scope', 'apiTokenInitializer', 'User',
  ($scope, apiTokenInitializer, User) ->
    $scope.apiToken = apiTokenInitializer
    $scope.current_user = null
    if $scope.apiToken
      User.getCurrentUser($scope.apiToken).then((user) ->
        $scope.current_user = user
      )
  ]
)

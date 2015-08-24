angular.module('main.controllers').controller(
  'HeaderController',
  ['$scope', 'apiTokenInitializer', 'User',
  ($scope, apiTokenInitializer, User) ->
    $scope.apiToken = apiTokenInitializer
    if $scope.apiToken
      User.getCurrentUser($scope.apiToken).then((user) ->
        $scope.current_user = user
    )
  ]
)

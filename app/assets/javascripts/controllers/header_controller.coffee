angular.module('main.controllers').controller(
  'HeaderController',
  ['$scope', 'apiTokenInitializer', 'currentUser',
  ($scope, apiTokenInitializer, currentUser) ->
    $scope.apiToken = apiTokenInitializer
    if $scope.apiToken
      currentUser.getCurrentUser($scope.apiToken).then((data) ->
        $scope.current_user = data
    )
  ]
)

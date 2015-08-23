angular.module('main.services').factory(
  'currentUser',
  ['apiTokenInitializer', '$http',
  (apiTokenInitializer, $http) ->
    token = apiTokenInitializer
    $http.defaults.headers.common.Authorization = "Token token=#{token}"
    $http.get('/api/current_user')
  ]
)

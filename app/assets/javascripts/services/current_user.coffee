angular.module('main.services').factory(
  'currentUser',
  ['apiTokenInitializer', '$http',
  (apiTokenInitializer, $http) ->
    token = apiTokenInitializer
    $http.defaults.headers.common.Authorization = token
    $http.get('/api/users')
  ]
)

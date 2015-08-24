angular.module('main.services').factory(
  'currentUser',
  ['$http',
  ($http) ->
    {
      getCurrentUser: (token) ->
        $http.defaults.headers.common.Authorization = "Token token=#{token}"
        $http.get('/api/current_user').then ((response) ->
          if typeof response.data == 'object'
            response.data
          else
            $q.reject response.data
        ), (response) ->
          $q.reject response.data
    }
  ]
)

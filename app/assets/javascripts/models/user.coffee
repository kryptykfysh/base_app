angular.module('main.models').factory(
  'User',
  ['$http',
  ($http) ->
    class User
      constructor: (options) ->
        {
          @first_name, @last_name, @email, @image_url, @created_at, @updated_at,
          @api_token
        } = options

      @getCurrentUser: (api_token) ->
        $http.defaults.headers.common.Authorization = "Token token=#{api_token}"
        $http.get('/api/current_user')
          .then(
            (response) ->
              if typeof response.data == 'object'
                user = new User response.data
                user.api_token = api_token
                user
              else
                $q.reject response.data
          )
  ]
)

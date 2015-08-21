app = angular.module(
  'base_app',
  [
    'ngRoute',
    'templates'
  ]
)

app.config([
  '$routeProvider',
  ($routeProvider) ->
    $routeProvider.when(
      '/',
      {
        controller: 'BaseController',
        templateUrl: 'base.html'
      }
    ).when(
      '/:something_else',
      {
        controller: 'SomethingElseController',
        templateUrl: 'something_else.html'
    )
])

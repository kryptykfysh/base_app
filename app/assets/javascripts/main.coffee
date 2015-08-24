app = angular.module(
  'main',
  [
    'ngRoute',
    'templates',
    'main.services',
    'main.models',
    'main.controllers'
  ]
)

angular.module('main.controllers', [])
angular.module('main.services', [])
angular.module('main.models', [])

app.config([
  '$routeProvider',
  ($routeProvider) ->
    $routeProvider.when(
      '/',
      {
        controller: 'MainController',
        templateUrl: 'main/index.html'
      }
    )
])

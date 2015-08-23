angular.module('main.services').factory(
  'apiTokenInitializer',
  [->
    if $('#api-token').length
      return $('#api-token')[0].dataset.apiToken
    else
      return nil
    end
  ]
)

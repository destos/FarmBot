'use strict'

describe 'Controller: HeaderCtrl', () ->

  # load the controller's module
  beforeEach module 'FarmBotApp'

  HeaderCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    HeaderCtrl = $controller 'HeaderCtrl', {
      $scope: scope
    }

  it 'should attach a list of liquid costs to the scope', () ->
    expect(scope.costs).toBe
      water: 4.12
      pesticide: 15.3
      fertilizer: 1.73

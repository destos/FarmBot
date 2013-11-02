'use strict'

describe 'Controller: FarmCtrl', () ->

  # load the controller's module
  beforeEach module 'FarmBot'

  FarmCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    FarmCtrl = $controller 'FarmCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3

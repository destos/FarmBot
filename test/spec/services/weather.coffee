'use strict'

describe 'Service: Weather', () ->

  # load the service's module
  beforeEach module 'FarmbotApp'

  # instantiate service
  Weather = {}
  beforeEach inject (_Weather_) ->
    Weather = _Weather_

  it 'should do something', () ->
    expect(!!Weather).toBe true

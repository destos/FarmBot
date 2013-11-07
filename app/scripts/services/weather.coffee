'use strict'

angular.module('FarmBotApp')
  .service 'Weather', ($http) ->
    # AngularJS will instantiate a singleton by calling "new" on this function
    get_weather: (data) ->
	    # $http.get('url', )

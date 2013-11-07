'use strict'

angular.module('FarmBotApp')
  .controller 'HeaderCtrl', ($scope, Weather) ->
	$scope.costs =
		water: 4.12
		pesticide: 15.3
		fertilizer: 1.73

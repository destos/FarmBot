'use strict'

angular.module('FarmBot')
  .controller 'HeaderCtrl', ($scope) ->
	$scope.costs =
		water: 4.12
		pesticide: 15.3
		fertilizer: 1.73

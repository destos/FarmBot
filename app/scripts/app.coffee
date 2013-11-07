'use strict'

angular.module('FarmBotApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router'
])
  .config ($locationProvider, $stateProvider, $urlRouterProvider) ->

    # enable push state
    # $locationProvider.html5Mode(true)

    $urlRouterProvider
      .otherwise('/dashboard')

    $stateProvider
      .state 'dashboard',
        url: '/dashboard'
        templateUrl: '/views/dashboard.html'
        controller: 'DashboardCtrl'
      .state 'farm',
        url: '/farm'
        templateUrl: '/views/farm.html'
        controller: 'FarmCtrl'
      .state 'data',
        url: '/data'
        templateUrl: '/views/data.html'
        controller: 'DataCtrl'
      .state 'help',
        url: '/help'
        templateUrl: '/views/help.html'
        controller: 'HelpCtrl'

  # link ui-router state for debug purposes
  .run ($rootScope, $state, $stateParams) ->
    $rootScope.$state = $state
    $rootScope.$stateParams = $stateParams

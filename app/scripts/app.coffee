'use strict'

angular.module('FarmBot', [
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
    # $routeProvider
    #   .when '/',
    #     templateUrl: 'views/main.html'
    #     controller: 'MainCtrl'
    #   .otherwise
    #     redirectTo: '/'

  .run ($rootScope, $state, $stateParams) ->
    $rootScope.$state = $state
    $rootScope.$stateParams = $stateParams

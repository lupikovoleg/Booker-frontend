'use strict'

window.booker = {
  api: {
    url: '//localhost:1337',
    stats: '/stats/',
    books: '/books/',
    authors: '/authors/',
    categories: '/categories/'
  },
  colors: [
    '#1abc9c',
    '#2ecc71',
    '#3498db',
    '#9b59b6',
    '#34495e',
    '#f1c40f',
    '#e67e22',
    '#e74c3c',
    '#ecf0f1',
    '#95a5a6'
  ],
}

angular.module( 'bookerApp', ['ngCookies', 'pascalprecht.translate', 'restangular', 'siyfion.sfTypeahead', 'ngRoute', 'ngSanitize', 'ngAnimate', 'ngTouch', 'angularFileUpload'] )
  .config [ "$translateProvider", ($translateProvider) ->
    $translateProvider.translations 'ru',
      lang_ru
      
    $translateProvider.translations 'en',
      lang_en
      
    $translateProvider.preferredLanguage 'ru'
    
    $translateProvider.useLocalStorage()
  ], [ (RestangularProvider) ->
    RestangularProvider.setBaseUrl booker.api.url
  ]
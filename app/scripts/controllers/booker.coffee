'use strict'

angular.module( 'bookerApp' )
  .controller 'BookerCtrl', ( $scope, $http ) ->

    menuLeft = document.getElementById( "bookerMenu" )
    showLeftPush = document.getElementById( "bookerMenuButton" )
    body = document.body
    showLeftPush.onclick = ( e ) ->
      e.preventDefault()
      classie.toggle this, "active"
      classie.toggle body, "active"
      classie.toggle menuLeft, "active"
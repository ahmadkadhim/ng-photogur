@photogur.controller 'PicturesController', ($scope, Pictures) ->
  $scope.pictures = Pictures.query()

  $scope.createPicture = ->
    console.log "creating?"
    new Picture($scope.picture).$save onPictureSave

    onPictureSave = ->
    	$location.path('/pictures')
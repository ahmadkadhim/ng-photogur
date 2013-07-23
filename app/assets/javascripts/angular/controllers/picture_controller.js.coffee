@photogur.controller 'PictureController', ($scope, Pictures, $routeParams) ->
	$scope.id = $routeParams.id
	$scope.picture = Picture.get id: $routeParams.id

	$scope.updatePicture = ->
		$scope.picture.$update onPictureSave, onError

	onPictureSave = ->
		$location.path('/pictures')

	onError = ->
		alert("Could not update picture.")
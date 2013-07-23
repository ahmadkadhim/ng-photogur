@photogur = angular.module 'photogur', []

@photogur.config ($routeProvider, $locationProvider) ->

$locationProvider.html5Mode(true)

$routeProvider
.when("/",						templateUrl: "pictures/index")
.when("/pictures",				templateUrl: "pictures/index")
.when("/pictures/:id",			templateUrl: "pictures/show")
.when("/pictures/new",			templateUrl: "pictures/new")
.when("/pictures/:id/edit",		templateUrl: "pictures/edit")
.otherwise(template: "Page not found.")

@photogur.run ['$window', '$templateCache', ($window, $templateCache) ->
	for name, templateFunction of $window.JST
		$templateCache.put(name, templateFunction)
]

#= require hamlcoffee
#= require_tree ../templates
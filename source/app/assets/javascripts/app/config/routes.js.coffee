railsAngularTestApp.config ['$stateProvider','$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  $stateProvider
    .state "transactions",
      url: "/charges"
      views:
        "":
          controller: "TransactionsCtrl"
          templateUrl: "transactions/index.html"
  return
]
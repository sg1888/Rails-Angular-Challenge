railsAngularTestApp.controller 'TransactionsCtrl', ['$scope', 'Transaction', ($scope, Transaction) ->
  $scope.transactions = {}
  $scope.getData = ->
    Transaction.getTransactions (response) ->
      $scope.transactions = response
    , (error) ->
      # Process the failed request here
      return
]


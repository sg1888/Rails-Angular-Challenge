railsAngularTestApp.directive "transactionlist", ->
  templateUrl: "directives/transaction_list.html"
  scope:
    transactions: "=source"
    title: "=title"
    type: "=type"
  link:  (scope, elem, attr, ctrl) ->
    return

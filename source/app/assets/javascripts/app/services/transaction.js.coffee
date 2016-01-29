railsAngularTestApp.factory 'Transaction', ["UtilService",
  (UtilService)->
    service = {}
    service.getTransactions = (successCallback, errorCallback)->
      url = Routes.transactions_path()

      UtilService.submitRequest(url, 'get', {}, successCallback, errorCallback)

    service
]
@railsAngularTestApp.factory 'UtilService', ["$q", "$http",
  ($q, $http)->
    service = {}
    service.submitRequest = (url, method, data, successCallback, errorCallback)->
      ret = $q.defer();
      config =
        url: "#{url}.json"
        data: data
        method: method

      $http config
      .success (response)->
        ret.resolve(response)
        successCallback(response) if successCallback
      .error (error)->
        errorCallback(error) if errorCallback
        ret.reject(undefined)

      ret.promise

    service
]
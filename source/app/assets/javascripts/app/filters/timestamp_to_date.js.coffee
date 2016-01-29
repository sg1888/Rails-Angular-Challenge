railsAngularTestApp.filter 'timestampToDate', ['$filter', ($filter)->
  (timestamp, format)->
    $filter('date')((new Date(timestamp * 1000)), 'longDate')
]

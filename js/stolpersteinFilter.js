window.stolpersteine.fn.stolpersteinFilter = function (feature) {
  /*
  {
    property: 'image',
    filterBy: 'isSet',
    values: [true, false]
  }
  */
  var properties = feature.properties
  var display = true
  window.stolpersteine.data.filterSetup.forEach(function (filter) {
    var passesFilter = false
    if (!Object.prototype.hasOwnProperty.call(filter, 'property')) {
      passesFilter = true // without property the condition is assumed to be met
    } else {
      if (!Object.prototype.hasOwnProperty.call(filter, 'values') || filter.values.length === 0) {
        passesFilter = true // if no value to compare to is provided the condition is assumed to be met
      } else {
        if (!Object.prototype.hasOwnProperty.call(filter, 'filterBy')) {
          filter.filterBy = 'equals' // if no filterBy is provided it is assumed to be 'equals'
        }
        // Actual filtering
        var property
        switch (filter.filterBy) {
          case 'contains':
            if (Object.prototype.hasOwnProperty.call(properties, filter.property)) {
              property = properties[filter.property]
              filter.values.forEach(function (value) {
                if (property.indexOf(value) > -1) {
                  passesFilter = true
                }
              })
            }
            break
          case 'equals':
            if (Object.prototype.hasOwnProperty.call(properties, filter.property)) {
              property = properties[filter.property]
              filter.values.forEach(function (value) {
                if (property === value) {
                  passesFilter = true
                }
              })
            }
            break
          case 'isSet':
            property = Object.prototype.hasOwnProperty.call(properties, filter.property)
            filter.values.forEach(function (value) {
              if (property === value) {
                passesFilter = true
              }
            })
            break
        }
      }
    }
    display &= passesFilter
  })
  return display
}

window.stolpersteine.fn.stolpersteinFilter = function (feature) {
  var attributes = feature.properties
  var display = true
  window.stolpersteine.data.filterSetup.forEach(function (filter) {
    var passesFilter = false
    if (!Object.prototype.hasOwnProperty.call(filter, 'attribute')) {
      passesFilter = true // without attribute the condition is assumed to be met
    } else {
      if (!Object.prototype.hasOwnProperty.call(filter, 'values') || filter.values.length === 0) {
        passesFilter = true // if no value to compare to is provided the condition is assumed to be met
      } else {
        if (!Object.prototype.hasOwnProperty.call(filter, 'filterBy')) {
          filter.filterBy = 'equals' // if no filterBy is provided it is assumed to be 'equals'
        }
        // Actual filtering
        var attribute
        switch (filter.filterBy) {
          case 'contains': // check if attribute contains the string
            if (Object.prototype.hasOwnProperty.call(attributes, filter.attribute)) {
              attribute = attributes[filter.attribute]
              filter.values.forEach(function (value) {
                if (attribute.indexOf(value) > -1) {
                  passesFilter = true
                }
              })
            }
            break
          case 'equals': // check if attribute equals string
            if (Object.prototype.hasOwnProperty.call(attributes, filter.attribute)) {
              attribute = attributes[filter.attribute]
              filter.values.forEach(function (value) {
                if (attribute === value) {
                  passesFilter = true
                }
              })
            }
            break
          case 'isSet': // check if attribute is set
            attribute = Object.prototype.hasOwnProperty.call(attributes, filter.attribute)
            filter.values.forEach(function (value) {
              if (attribute === value) {
                passesFilter = true
              }
            })
            break
          case 'partSoundsLike': // check if part of the attribute sounds like the string
            if (Object.prototype.hasOwnProperty.call(attributes, filter.attribute)) {
              var attributeParts = attributes[filter.attribute].replace('-', '').split(/\b/)
              attributeParts.forEach(function (attributePart) {
                var compare = window.stolpersteine.fn.colognePhonetics(attributePart)
                filter.values.forEach(function (value) {
                  if (compare === window.stolpersteine.fn.colognePhonetics(value)) {
                    passesFilter = true
                  }
                })
              })
            }
            break
          case 'soundsLike': // check if the attribute sounds like the string
            if (Object.prototype.hasOwnProperty.call(attributes, filter.attribute)) {
              attribute = window.stolpersteine.fn.colognePhonetics(attributes[filter.attribute])
              filter.values.forEach(function (value) {
                if (attribute === window.stolpersteine.fn.colognePhonetics(value)) {
                  passesFilter = true
                }
              })
            }
            break
        }
      }
    }
    display &= passesFilter
  })
  return display
}

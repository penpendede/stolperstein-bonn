window.stolpersteine.fn.addStolpersteine = function () {
  function link (text) {
    var tokens = window.stolpersteine.tokens
    var tokenized = [text]
    var position
    var index
    var pre
    var post
    var match
    Object.keys(tokens).forEach(function (key) {
      for (var index = 0; index < tokenized.length; index++) {
        position = tokenized[index].indexOf(key)
        if (position > -1 && tokenized[index] !== key) {
          pre = tokenized[index].substring(0, position)
          match = tokenized[index].substr(position, key.length)
          post = tokenized[index].substr(position + key.length)
          tokenized.splice(index + 1, 0, post)
          tokenized[index] = match
          tokenized.splice(index, 0, pre)
          index--
        }
      }
    })
    Object.keys(tokens).forEach(function (key) {
      var value = tokens[key]
      for (index = 0; index < tokenized.length; index++) {
        if (tokenized[index] === key) {
          tokenized[index] = '<a href="' + value.url + '" title="' + value.short + '" target="_blank">' + key + '</a>'
        }
      }
    })
    return tokenized.join('')
  }

  var geojson = window.osmtogeojson(window.stolpersteine.data.stolpersteine)
  var markers = window.L.markerClusterGroup({
    maxClusterRadius: 50
  })
  markers.addLayer(window.L.geoJson(geojson, {
    onEachFeature: function (feature, layer) {
      var properties = feature.properties
      var description = []
      var property1 = properties.name || properties['memorial::name']
      var name = property1
      var property2
      var ort = ''
      var geborenGestorben = ''
      if (property1) {
        property1 = properties['memorial:text']
        if (property1) {
          description.push('<div class="stolperstein-quote">')
          description.push('<blockquote>')
          description.push('<p>')
          description.push(link(property1))
          description.push('</p>')
          description.push('</blockquote>')
          description.push('</div>')
        }
        property1 = properties['person:date_of_birth']
        if (property1) {
          geborenGestorben = 'geboren ' + property1
        }
        property2 = properties['person:date_of_death']
        if (property2) {
          if (property1) {
            geborenGestorben += ', '
          }
          geborenGestorben += 'gestorben ' + property2
        }
        if (geborenGestorben) {
          description.push('<div>' + geborenGestorben + '</div>')
        }
        property1 = properties['addr:street']
        if (property1) {
          ort = property1
          property1 = properties['addr:housenumber']
          if (property1) {
            ort += ' ' + property1
          }
          property1 = properties['addr:city']
          if (property1) {
            if (ort) {
              ort += ', '
            }
            property2 = properties['addr:postcode']
            if (property2) {
              ort += property2 + ' '
            }
            ort += property1
          }
        }
        if (ort) {
          description.push('<div>' + ort + '</div>')
        }
        var imageUrl = decodeURIComponent(properties.image)
        if (imageUrl) {
          var urls = window.stolpersteine.fn.resolveImageUrl(imageUrl)
          description.push([
            '<p style="min-height:300px;">',
            '<a href="' + urls.link + '" target="_blank">',
            '<img src="' + urls.thumb + '" />',
            '</a>',
            '</p>'
          ].join(''))
        }
        layer.on('click', function () {
          window.L.control.window(window.stolpersteine.map, {
            title: name,
            content: description.join('')
          })
            .show()
        })
      }
    }
  }))
  window.stolpersteine.map.addLayer(markers)
}

window.stolpersteine.fn.addStolpersteine = function () {
  var grayIcon = window.L.icon({
    iconUrl: 'images/marker-gray-icon.png',
    shadowUrl: 'images/marker-shadow.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
    shadowSize: [41, 41],
    shadowAnchor: [12, 41]
  })

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

  var geojson = window.osmtogeojson(
    window.stolpersteine.data.stolpersteine
  )
  window.stolpersteine.markers = window.L.markerClusterGroup({
    maxClusterRadius: 50
  })
  var markerLayer = window.L.geoJson(geojson, {
    filter: window.stolpersteine.fn.stolpersteinFilter,
    pointToLayer: function (feature, latlng) {
      if (!feature.properties.image) {
        return window.L.marker(latlng, { icon: grayIcon })
      } else {
        return window.L.marker(latlng)
      }
    },
    onEachFeature: function (feature, layer) {
      var properties = feature.properties
      var description = []
      var property1 = properties.name || properties['memorial:name']
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
        if (imageUrl && imageUrl !== 'undefined') {
          if (/^(File|Datei):/i.test(imageUrl)) {
            imageUrl = 'https://commons.wikimedia.org/wiki/' + imageUrl
          }
          description.push([
            '<p>',
            '<a href="' + imageUrl + '" target="_blank" style="text-decoration: none;">',
            '<i class="fas fa-camera fa-lg"></i> ',
            'Foto verfügbar',
            '</a>',
            '</p>'
          ].join(''))
          if (/^https:\/\/upload\.wikimedia\.org\/wikipedia\/commons/.test(imageUrl) ||
            /^https:\/\/commons\.wikimedia\.org\/wiki\/(Datei|File)/i.test(imageUrl)
          ) {
            var split = imageUrl.split('/')
            var thumbName = split[split.length - 1].replace(/^(File|Datei):/, '')
            description.push([
              '<p style="min-height: 300px;">',
              '<a href="', imageUrl, '" target="_blank">',
              '<img src="https://commons.wikimedia.org/w/thumb.php?f=', thumbName, '&w=300">',
              '</a>',
              '</p>'
            ].join(''))
          }
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
  })
  window.stolpersteine.markers.addLayer(markerLayer)
  if (!window.stolpersteine.searchControl) {
    window.stolpersteine.searchControl = window.stolpersteine.map.addControl(new window.L.Control.Search({
      layer: window.stolpersteine.markers,
      marker: {
        circle: {
          color: '#ff6600',
          radius: 20
        },
        icon: null
      },
      propertyName: 'name',
      zoom: 17
    }))
  }
  window.stolpersteine.map.addLayer(window.stolpersteine.markers)
}

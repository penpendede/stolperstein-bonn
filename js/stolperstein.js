/* jslint browser:true, unparam:true */
/* jslint browser:true, unparam:true */
/* jslint browser:true, unparam:true */
/* global $, L, osmtogeojson */

var geoJsonLayer

function storageAvailable (type) {
  try {
    var storage = window[type]
    var x = '__storage_test__'
    storage.setItem(x, x)
    storage.removeItem(x)
    return true
  } catch (e) {
    return false
  }
}

function bezirkName (bezirkId, bezirksName) {
  return bezirksName[bezirkId - 1]
}

function ortsteilName (ortsteilId, ortsteile) {
  return ortsteile[ortsteilId - 1].name
}

function stolpersteinAnzahl (ortsteilId, ortsteile) {
  return ortsteile[ortsteilId - 1].count || 0
}

function link (text, tokens) {
  var tokenized = [text]
  var position
  var index
  var pre
  var post
  var match
  $.each(tokens, function (key) {
    for (index = 0; index < tokenized.length; index++) {
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
  $.each(tokens, function (key, value) {
    for (index = 0; index < tokenized.length; index++) {
      if (tokenized[index] === key) {
        tokenized[index] = '<a href="' + value.url + '" title="' + value.short + '" target="_blank">' + key + '</a>'
      }
    }
  })
  return tokenized.join('')
}

function inGerman (val) {
  switch (val) {
    case 0:
      return 'kein'
    case 1:
      return 'ein'
    case 2:
      return 'zwei'
    case 3:
      return 'drei'
    case 4:
      return 'vier'
    case 5:
      return 'f&uuml;nf'
    case 6:
      return 'sechs'
    case 7:
      return 'sieben'
    case 8:
      return 'acht'
    case 9:
      return 'neun'
    case 10:
      return 'zehn'
    case 11:
      return 'elf'
    case 12:
      return 'zw&ouml;lf'
    default:
      return val.toString()
  }
}

function addLayers (map) {
  new L.tileLayer('https://mapintosh.de/tiles/osm/{z}/{x}/{y}.png', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
      '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
    useCache: true
  }).addTo(map)

  var mapWidth = $('#map').width()
  var mapHeight = $('#map').height()

  if (mapWidth >= 250 && mapHeight >= 250) {
    new L.Control.MiniMap(new L.TileLayer('https://mapintosh.de/tiles/osm/{z}/{x}/{y}.png', {
      maxZoom: 18,
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
      useCache: true
    }), {
      zoomLevelFixed: 8,
      width: mapWidth / 5,
      height: mapHeight / 5,
      aimingRectOptions: {
        color: '#008',
        weight: 3
      },
      toggleDisplay: true
    }).addTo(map)
  }
  return map
}

function addBonnCityLimits (map) {
  var fetchingRequired = true
  var fetchingFrequency = 1440 // A day (1440 minutes)
  var currentTimestamp

  function process (cityLimitJsonData) {
    window.localStorage.setItem('cityLimitLastFetched', currentTimestamp)
    window.localStorage.setItem('cityLimitData', JSON.stringify(cityLimitJsonData))
    L.geoJson(cityLimitJsonData, {
      style: function (feature) {
        return {
          weight: 5,
          color: '#f00',
          opacity: 0.4,
          fillColor: '#00f',
          fillOpacity: 0.08
        }
      }
    }).addTo(map)
  }

  if (storageAvailable('localStorage')) {
    var oldTimestamp = window.localStorage.getItem('cityLimitLastFetched')
    currentTimestamp = (Math.floor((new Date()).getTime() / 60000 / fetchingFrequency)).toString()

    if (window.localStorage.getItem('cityLimitData') && oldTimestamp === currentTimestamp) {
      fetchingRequired = false
    }
  }
  if (fetchingRequired) {
    $.ajax({
      dataType: 'json',
      url: './proxy.php?csurl=' + encodeURIComponent('https://stadtplan.bonn.de/geojson?Thema=21248&koordsys=4326'),
      success: process,
      error: function (XMLHttpRequest, textStatus, errorThrown) { }
    })
  } else {
    process(JSON.parse(window.localStorage.getItem('cityLimitData')))
  }
}

function addBonnMunicipalityLimits (map) {
  var fetchingRequired = true
  var fetchingFrequency = 1440 // A day (1440 minutes)
  var currentTimestamp

  function process (municipalityLimitsJsonData) {
    window.localStorage.setItem('municipalityLimitsLastFetched', currentTimestamp)
    window.localStorage.setItem('municipalityLimitsData', JSON.stringify(municipalityLimitsJsonData))
    L.geoJson(municipalityLimitsJsonData, {
      style: function (feature) {
        return {
          weight: 5,
          color: '#00f',
          opacity: 0.4,
          fillOpacity: 0
        }
      }
    }).addTo(map)
  }

  if (storageAvailable('localStorage')) {
    var oldTimestamp = window.localStorage.getItem('municipalityLimitsLastFetched')
    currentTimestamp = (Math.floor((new Date()).getTime() / 60000 / fetchingFrequency)).toString()

    if (window.localStorage.getItem('municipalityLimitsData') && oldTimestamp === currentTimestamp) {
      fetchingRequired = false
    }
  }
  if (fetchingRequired) {
    $.ajax({
      dataType: 'json',
      url: './proxy.php?csurl=' + encodeURIComponent('https://stadtplan.bonn.de/geojson?Thema=14574&koordsys=4326'),
      success: process,
      error: function (XMLHttpRequest, textStatus, errorThrown) { }
    })
  } else {
    process(JSON.parse(window.localStorage.getItem('municipalityLimitsData')))
  }
}

function configureBonnDistrictPopups (feature, layer, status, ortsteile, bezirksnamen) {
  var description = []
  if (feature.properties) {
    if (feature.properties.ortsteil) {
      description.push('<strong>' + ortsteilName(feature.properties.ortsteil, ortsteile) + '</strong>')
    }
    if (feature.properties.bezirk) {
      description.push('Stadtbezirk ' + bezirkName(feature.properties.bezirk, bezirksnamen))
    }
    feature.properties.stolpersteine = stolpersteinAnzahl(feature.properties.ortsteil, ortsteile)
    description.push(
      '<strong>' + inGerman(feature.properties.stolpersteine) + '</strong>' +
      ' Stolperstein' +
      (feature.properties.stolpersteine > 1 ? 'e' : '')
    )
    feature.properties.description = description.join(', ')
    layer.on('mouseover', function (e) {
      var layer = e.target

      layer.setStyle({
        weight: 1,
        color: '#00f',
        opacity: 1,
        fillColor: '#fff',
        fillOpacity: 0.2
      })
      status.show()
      status.display(layer.feature.properties.description)
    })
    layer.on('mouseout', function (e) {
      var layer = e.target

      layer.setStyle({
        weight: 1,
        color: '#00f',
        opacity: 1,
        fillOpacity: 0
      })
      status.hide()
    })
  }
}

function addBonnDistricts (map, status, ortsteile, bezirksnamen) {
  var fetchingRequired = true
  var fetchingFrequency = 1440 // A day (1440 minutes)
  var currentTimestamp

  function process (districtLimitsJsonData) {
    window.localStorage.setItem('districtLimitsLastFetched', currentTimestamp)
    window.localStorage.setItem('districtLimitsData', JSON.stringify(districtLimitsJsonData))
    L.geoJson(districtLimitsJsonData, {
      style: function (feature) {
        return {
          weight: 1,
          color: '#00f',
          opacity: 1,
          fillOpacity: 0
        }
      },
      onEachFeature: function (feature, layer) {
        configureBonnDistrictPopups(feature, layer, status, ortsteile, bezirksnamen)
      },
      error: function (XMLHttpRequest, textStatus, errorThrown) { }
    }).addTo(map)
  }

  if (storageAvailable('localStorage')) {
    var oldTimestamp = window.localStorage.getItem('districtLimitsLastFetched')
    currentTimestamp = (Math.floor((new Date()).getTime() / 60000 / fetchingFrequency)).toString()

    if (window.localStorage.getItem('districtLimitsData') && oldTimestamp === currentTimestamp) {
      fetchingRequired = false
    }
  }
  if (fetchingRequired) {
    $.ajax({
      dataType: 'json',
      url: './proxy.php?csurl=' + encodeURIComponent('https://stadtplan.bonn.de/geojson?Thema=21247&koordsys=4326'),
      success: process
    })
  } else {
    process(JSON.parse(window.localStorage.getItem('districtLimitsData')))
  }
}

function makeGeoJsonLayerFromOsmJson (osmJsonData, tokens, status) {
  var grayIcon = L.icon({
    iconUrl: 'images/marker-gray-icon.png',
    shadowUrl: 'images/marker-shadow.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
    shadowSize: [41, 41],
    shadowAnchor: [12, 41]
  })
  return L.geoJson(osmtogeojson(osmJsonData), {
    /* filter: function(feature, layer) {
      return !feature.properties.tags.image
    }, /* Uncomment filter to only display stolpersteins that lack an image */
    pointToLayer: function (feature, latlng) {
      if (!feature.properties.tags.image) {
        return L.marker(latlng, { icon: grayIcon })
      } else {
        return L.marker(latlng)
      }
    },
    onEachFeature: function (feature, layer) {
      var tags = feature.properties.tags
      var description = ['<table>']
      var ort = ''
      var geborenGestorben
      var name = tags.name || tags['memorial:name']

      if (name) {
        if (tags['addr:street']) {
          ort = tags['addr:street']

          if (tags['addr:housenumber']) {
            ort = ort + ' ' + tags['addr:housenumber']
          }
        }
        if (tags['addr:city']) {
          if (ort) {
            ort = ort + ', '
          }
          if (tags['addr:postcode']) {
            ort = ort + tags['addr:postcode'] + ' '
          }
          ort = ort + tags['addr:city']
        }
        if (tags['person:date_of_birth']) {
          geborenGestorben = 'geb. ' + tags['person:date_of_birth']
        }
        if (tags['person:date_of_death']) {
          if (geborenGestorben) {
            geborenGestorben += ', gest. ' + tags['person:date_of_death']
          } else {
            geborenGestorben = 'gest. ' + tags['person:date_of_death']
          }
        }
        description.push('<tr><th>' + name + (
          geborenGestorben ? '<br>(' + geborenGestorben + ')' : ''
        ) + '</th></tr>')

        if (ort) {
          description.push('<tr><td>' + ort + '</td></tr>')
        }
        if (tags['memorial:text']) {
          description.push('<tr><td>' + link(tags['memorial:text'], tokens) + '</td></tr>')
        }
        description.push('</table>')
        var refUrl = decodeURIComponent(tags.image)
        if (refUrl) {
          if (/^https:\/\/upload\.wikimedia\.org\/wikipedia\/commons/.test(refUrl)) {
            description.push(
              '<a href="' +
              refUrl +
              '" target="_blank"><img src="' +
              refUrl.replace(
                'https://upload.wikimedia.org/wikipedia/commons',
                'https://upload.wikimedia.org/wikipedia/commons/thumb'
              ) +
              '/300px-' +
              refUrl.split('/')[refUrl.split('/').length - 1] +
              '" /></a>'
            )
          } else if (/https:\/\/commons\.wikimedia\.org\/wiki\/(Datei|File)/i.test(refUrl)) {
            description.push(
              '<a href="' +
              refUrl +
              '" target="_blank"><img src="' +
              'File' + refUrl.substr(39).replace(/^%3A/, ':') +
              '" /></a>'
            )
          } else if (/(File|Datei):/i.test(refUrl)) {
            description.push(
              '<a href="' + refUrl.replace(/ /gi, '_') + '" target="_blank">' +
              '<img src="./images/Clear.gif" /></a>')
          }
        }
        layer.bindPopup(description.join(''), {
          autoPan: false
        })
        layer.on('mouseover', function (e) {
          status.show()
          status.display('<strong>Klicken Sie bitte den Marker an.</strong>')
        })
        layer.on('mouseout', function (e) {
          status.hide()
        })
        layer.on('click', function (e) {
          if (this.isVisible) {
            layer.closePopup(this)
            this.isVisible = false
          } else {
            this.isVisible = true

            var popup = this.getPopup()

            layer.openPopup(this)
            var popupHTML = popup.getContent()
            var data = extractFileApiUrl(popupHTML)

            if (data.file && data.apiUrl) {
              var request = data.apiUrl + '?' + [
                'action=query',
                'prop=imageinfo',
                'iiprop=url',
                'iiurlwidth=300',
                'iilimit=1',
                'format=json',
                'titles=' + data.file
              ].join('&')
              $.ajax({
                dataType: 'json',
                url: './proxy.php?csurl=' + encodeURIComponent(request),
                success: function (jsonData) {
                  var urls = jsonData.query.pages['-1'].imageinfo[0]
                  var thumbUrl = urls.thumburl
                  var referUrl = urls.descriptionshorturl
                  popup.setContent(popupHTML.replace(
                    /<a href="[^"]+" target="_blank"><img src="[^"]+" \/>/i,
                    '<a href="' + referUrl + '" target="_blank"><img src="' + thumbUrl + '" />'
                  ))
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) { }
              })
            }
          }
        })
      }
    }
  })
}

function extractFileApiUrl (popupHTML) {
  var file
  var apiUrl
  var url = popupHTML.match(/<a href="([^"]+)" target="_blank"><img src="[^"]+" \/>/)[1]
  if (url.match(/^(File|Datei):/i)) {
    apiUrl = 'https://www.mediawiki.org/w/api.php'
    file = url.replace(/^File:/i, 'File:').replace(/^Datei:/i, 'Datei')
  } else if (url.match(/^https?:\/\/commons.wikimedia.org\/wiki\/(File|Datei):/i)) {
    apiUrl = 'https://www.mediawiki.org/w/api.php'
    file = url.match(/(File|Datei):.*$/i)[0].replace(/^File:/i, 'File:').replace(/^Datei:/i, 'Datei')
  }
  return {
    file: file,
    apiUrl: apiUrl
  }
}

function addStolpersteins (map, status, tokens) {
  var fetchingRequired = true
  var fetchingFrequency = 360 // a quarter of a day
  var currentTimestamp

  var markers = L.markerClusterGroup({
    maxClusterRadius: 50
  })

  function process (stolpersteinJsonData) {
    window.localStorage.setItem('stolpersteinLastFetched', currentTimestamp)
    window.localStorage.setItem('stolpersteinData', JSON.stringify(stolpersteinJsonData))
    map.closePopup(popup)

    geoJsonLayer = makeGeoJsonLayerFromOsmJson(stolpersteinJsonData, tokens, status)
    markers.addLayer(geoJsonLayer)
    map.addLayer(markers)
  }

  if (storageAvailable('localStorage')) {
    var oldTimestamp = window.localStorage.getItem('stolpersteinLastFetched')
    currentTimestamp = (Math.floor((new Date()).getTime() / 60000 / fetchingFrequency)).toString()

    if (window.localStorage.getItem('stolpersteinData') && oldTimestamp === currentTimestamp) {
      fetchingRequired = false
    }
  }
  if (fetchingRequired) {
    var popup = L.popup()
      .setLatLng([50.7085234, 7.115605])
      .setContent(
        '<h3 style="text-align:center;">Einen Moment bitte</h3>' +
        '<p style="text-align:center;">Die aktuellen Stolperstein-Informationen werden eingelesen.</p>'
      ).openOn(map)
    $.ajax({
      dataType: 'json',
      url: 'https://overpass-api.de/api/interpreter?' +
        'data=[out:json][timeout:25][bbox:50.5,6.9,50.88,7.4];' + // Bonn
        // 'data=[out:json][timeout:25][bbox:51.91,8.3,52.12,8.67];' + // Bielefeld
        // 'data=[out:json][timeout:25][bbox:49.90,6.045,51.8,8.1];' + // Köln
        '(' +
        'node["memorial:type"="stolperstein"];' +
        'way["memorial:type"="stolperstein"];' + // unlikely to occur but possible
        'rel["memorial:type"="stolperstein"];' + // unlikely to occur but possible
        ');' +
        'out meta;>;out meta qt;',
      success: process,
      error: function (XMLHttpRequest, textStatus, errorThrown) {
        popup.setContent('<h3 style="text-align:center;">Leider konnten die Daten der Stolpersteine nicht geladen werden.</h3>')
      }
    })
  } else {
    process(JSON.parse(window.localStorage.getItem('stolpersteinData')))
  }
}

$(document).ready(
  function () {
    var fetchingRequired = true
    var fetchingFrequency = 360 // a quarter of a day
    var currentTimestamp

    function process (additionalDataJsonData) {
      window.localStorage.setItem('additionalDataLastFetched', currentTimestamp)
      window.localStorage.setItem('additionalData', JSON.stringify(additionalDataJsonData))

      addBonnCityLimits(map)
      addBonnMunicipalityLimits(map)
      addBonnDistricts(map, status, additionalDataJsonData.ortsteile, additionalDataJsonData.bezirksnamen)
      addStolpersteins(map, status, additionalDataJsonData.tokens || {})
    }

    var map = L.map('map', {
      center: [50.7085234, 7.115605],
      zoom: 12,
      maxZoom: 18,
      zoomControl: true,
      fullscreenControl: true,
      gpsControl: true
    })
    addLayers(map)
    map.fitBounds([
      [50.63, 7.01],
      [50.78, 7.22]
    ])
    var status = L.control.Status()
    status.addTo(map)
    status.hide()
    map.addControl(new L.Control.Loading())
    map.addControl(new L.Control.Measure({
      primaryLengthUnit: 'kilometers',
      secondaryLengthUnit: 'meters',
      primaryAreaUnit: 'hectares',
      activeColor: '#00f',
      completedColor: '#609',
      localization: 'de',
      position: 'topright'
    }))

    if (storageAvailable('localStorage')) {
      var oldTimestamp = window.localStorage.getItem('additionalDataLastFetched')
      currentTimestamp = (Math.floor((new Date()).getTime() / 60000 / fetchingFrequency)).toString()

      if (window.localStorage.getItem('additionalData') && oldTimestamp === currentTimestamp) {
        fetchingRequired = false
      }
    }

    if (fetchingRequired) {
      $.ajax({
        dataType: 'json',
        url: 'files/Zusatzdaten.json',
        success: process,
        error: function (XMLHttpRequest, textStatus, errorThrown) { }
      })
    } else {
      process(JSON.parse(window.localStorage.getItem('additionalData')))
    }
  }
)

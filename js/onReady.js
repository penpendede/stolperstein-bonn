document.ready(
  function () {
    window.stolpersteine.fn.initializeMap('map')
    /*
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

    addLayers(map)
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
    */
  }
)

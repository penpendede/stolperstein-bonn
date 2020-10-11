window.stolpersteine.fn.initialize = function (mapId) {
  window.stolpersteine.mapId = mapId
  window.stolpersteine.markers = null
  window.stolpersteine.data.filterSetup = [
    {
      property: 'image',
      filterBy: 'isSet',
      values: [true, false]
    },
    {
      property: 'name'
    }
  ]
  window.stolpersteine.map = window.L.map(mapId, {
    center: [50.7085234, 7.115605],
    zoom: 12,
    maxZoom: 18,
    zoomControl: true,
    fullscreenControl: true
  })
  window.stolpersteine.map.addControl(new window.L.Control.Loading())
  window.stolpersteine.map.addControl(new window.L.Control.Gps({
    autoActive: false,
    autoCenter: false,
    maxZoom: 18,
    textErr: 'Ortsbestimmung nicht möglich',
    callErr: null,
    style: {
      radius: 5,
      color: 'rgba(255, 64, 0, 0.7)',
      fillColor: 'rgba(255, 64, 0, 0.5)'
    },
    marker: null,
    accuracy: true,
    title: 'Karte auf aktuelle Position zentrieren',
    position: 'topright',
    transform: function (latlng) {
      return latlng
    },
    setView: false
  }))
  window.stolpersteine.map.locate({
    setView: true,
    maxZoom: 16,
    watch: true
  })
}

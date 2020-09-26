window.stolpersteine.fn.initialize = function (mapId) {
  window.stolpersteine.mapId = mapId
  window.stolpersteine.map = window.L.map(mapId, {
    center: [50.7085234, 7.115605],
    zoom: 12,
    maxZoom: 18,
    zoomControl: true,
    fullscreenControl: true
  })
  window.stolpersteine.map.addControl(new window.L.Control.Loading())
  window.stolpersteine.map.locate({
    setView: true,
    maxZoom: 16,
    watch: true
  })
}
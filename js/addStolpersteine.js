window.stolpersteine.fn.addStolpersteine = function () {
  var geojson = window.osmtogeojson(window.stolpersteine.data.stolpersteine)
  var markers = window.L.markerClusterGroup({
    maxClusterRadius: 50
  })
  markers.addLayer(window.L.geoJson(geojson))
  window.stolpersteine.map.addLayer(markers)
}

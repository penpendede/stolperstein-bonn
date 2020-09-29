window.stolpersteine.fn.addStolpersteine = function () {
  var geojson = window.osmtogeojson(window.stolpersteine.data.stolpersteine)
  window.L.geoJson(geojson).addTo(window.stolpersteine.map)
}

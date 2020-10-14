
window.stolpersteine.fn.addBezirke = function () {
  window.stolpersteine.layers.featureLayers = window.L.geoJson(window.stolpersteine.data.bezirke, {
    style: function (feature) {
      return {
        weight: 4,
        color: '#00f',
        opacity: 0.4,
        fillOpacity: 0
      }
    }
  }).addTo(window.stolpersteine.map)
}

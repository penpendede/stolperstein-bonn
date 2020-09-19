
window.stolpersteine.fn.addBezirke = function () {
  window.stolpersteine.layers.featureLayers = window.L.geoJson(window.stolpersteine.bezirke, {
    style: function (feature) {
      return {
        weight: 3,
        color: '#00f',
        opacity: 0.4,
        fillOpacity: 0
      }
    },
    error: function (XMLHttpRequest, textStatus, errorThrown) { }
  }).addTo(window.stolpersteine.map)
}

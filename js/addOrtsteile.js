window.stolpersteine.fn.addOrtsteile = function () {
  window.stolpersteine.layers.featureLayers.ortsteile = window.L.geoJson(window.stolpersteine.data.ortsteile, {
    style: function (feature) {
      return {
        weight: 1,
        color: '#00f',
        opacity: 1,
        fillOpacity: 0
      }
    }
  }).addTo(window.stolpersteine.map)
}

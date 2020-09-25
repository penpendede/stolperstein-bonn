window.stolpersteine.fn.addOrtsteile = function () {
  window.stolpersteine.layers.featureLayers.ortsteile = window.L.geoJson(window.stolpersteine.data.ortsteile, {
    style: function (feature) {
      return {
        weight: 1,
        color: '#00f',
        opacity: 1,
        fillOpacity: 0
      }
    },
    onEachFeature: function (feature, layer) {
      layer.bindPopup(feature.properties.ortsteil_bez)
      layer.on('mouseover', function (e) {
        this.openPopup()
      })
      layer.on('mouseout', function (e) {
        this.closePopup()
      })
    }
  }).addTo(window.stolpersteine.map)
}

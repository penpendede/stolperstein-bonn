window.stolpersteine.fn.addStadtgebiet = function () {
  window.stolpersteine.layers.featureLayers.stadtgebiet = window.L.geoJson(window.stolpersteine.data.stadtgebiet, {
    style: function (feature) {
      return {
        weight: 5,
        color: '#00f',
        opacity: 0.4,
        fillOpacity: 0
      }
    }
  }).addTo(window.stolpersteine.map)
}

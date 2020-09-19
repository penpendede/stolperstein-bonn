window.stolpersteine.fn.addStadtgebiet = function () {
  window.L.geoJson(window.stolpersteine.stadtgebiet, {
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

window.stolpersteine.fn.addBaseLayers = function () {
  new window.L.tileLayer('https://mapintosh.de/tiles/osm/{z}/{x}/{y}.png', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
    useCache: true
  }).addTo(window.stolpersteine.map)

  window.stolpersteine.map.fitBounds([
    [50.63, 7.01],
    [50.78, 7.22]
  ])
}

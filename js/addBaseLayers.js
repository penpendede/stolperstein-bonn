window.stolpersteine.fn.addBaseLayers = function () {
  new window.L.tileLayer('https://mapintosh.de/tiles/osm/{z}/{x}/{y}.png', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
    useCache: true
  }).addTo(window.stolpersteine.map)

  var mapElement = document.getElementById(window.stolpersteine.mapId)
  var mapWidth = parseFloat(window.getComputedStyle(mapElement, null).width.replace('px', ''))

  var mapHeight = parseFloat(window.getComputedStyle(mapElement, null).height.replace('px', ''))

  if (mapWidth >= 250 && mapHeight >= 250) {
    new window.L.Control.MiniMap(
      new window.L.TileLayer(
        'https://mapintosh.de/tiles/osm/{z}/{x}/{y}.png', {
          maxZoom: 18,
          attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
          '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
          useCache: true
        }
      ), {
        zoomLevelFixed: 8,
        width: 0.2 * mapWidth,
        height: 0.2 * mapHeight,
        aimingRectOptions: {
          color: '#008',
          weight: 3
        },
        toggleDisplay: true
      }).addTo(window.stolpersteine.map)
  }
  window.stolpersteine.map.fitBounds([
    [50.63, 7.01],
    [50.78, 7.22]
  ])
}

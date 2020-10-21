window.stolpersteine.fn.addBaseLayers = function () {
  window.stolpersteine.layers.baseLayers.grayscale = new window.L.tileLayer.colorFilter(
    'https://tileserver.benndorf.de/osm_de/{z}/{x}/{y}.png', {
      maxZoom: 18,
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
          '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
      useCache: true,
      filter: [
        'blur: 0.5px',
        'grayscale: 60%',
        'opacity: 50%'
      ]
    }
  ).addTo(window.stolpersteine.map)

  window.stolpersteine.layers.baseLayers.cityOnlyColor = new window.L.TileLayer.BoundaryCanvas(
    'https://tileserver.benndorf.de/osm_de/{z}/{x}/{y}.png', {
      maxZoom: 18,
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
          '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
      useCache: true,
      boundary: window.stolpersteine.data.stadtgebiet
    }
  ).addTo(window.stolpersteine.map)
  window.stolpersteine.map.fitBounds([
    [50.63, 7.01],
    [50.78, 7.22]
  ])
}

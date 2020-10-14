window.stolpersteine.fn.extractGebiete = function () {
  window.stolpersteine.gebietsdaten = {
    stadt: window.stolpersteine.data.stadtgebiet.features[0].properties,
    bezirke: [],
    ortsteile: []
  }

  window.stolpersteine.data.bezirke.features.forEach(function (feature) {
    window.stolpersteine.gebietsdaten.bezirke.push(feature.properties)
  })
  window.stolpersteine.data.ortsteile.features.forEach(function (feature) {
    window.stolpersteine.gebietsdaten.ortsteile.push(feature.properties)
  })
}

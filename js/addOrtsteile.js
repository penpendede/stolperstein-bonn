window.stolpersteine.fn.addOrtsteile = function () {
  var bezirkCount = window.stolpersteine.data.bezirkCount
  var ortsteilCount = window.stolpersteine.data.ortsteilCount
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
      var props = feature.properties
      layer.bindPopup([
        '<table class="no-line-break">',
        '<tr>',
        '<th>&nbsp;</th>',
        '<th>Name</th>',
        '<th>Stolper&shy;steine</th>',
        '</tr>',
        '<tr>',
        '<th>Bezirk</th>',
        '<td>' + props.bezirk_bez + '</td>',
        '<td>' + bezirkCount[props.bezirk_bez] + '</td>',
        '</tr>',
        '<tr>',
        '<th>Orts&shy;teil</th>',
        '<td>' + props.ortsteil_bez.replace(/\b\//, ' /').replace(/\/\b/, '/ ') + '</td>',
        '<td>' + ortsteilCount[props.ortsteil_bez] + '</td>',
        '</tr>',
        '</table>'
      ].join(''))
      layer.on('click', function (e) {
        this.openPopup()
      })
    }
  }).addTo(window.stolpersteine.map)
}

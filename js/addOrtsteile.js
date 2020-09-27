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
      var props = feature.properties
      layer.bindPopup([
        '<table class="no-line-break">',
        '<tr>',
        '<th>Bezirk</th>',
        '<td>' + props.bezirk_bez + '</td>',
        '</tr>',
        '<tr>',
        '<th>Ortsteil</th>',
        '<td>' + props.ortsteil_bez + '</td>',
        '</tr>',
        '<tr>',
        '<th>Stolpersteine</th>',
        '<td>' + (props.stolpersteine === undefined ? 'unbekannt' : props.stolpersteine) + '</td>',
        '</tr>',
        '</table>'
      ].join(''))
      layer.on('mouseover', function (e) {
        this.openPopup()
      })
      layer.on('mouseout', function (e) {
        this.closePopup()
      })
    }
  }).addTo(window.stolpersteine.map)
}

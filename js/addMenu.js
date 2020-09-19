window.stolpersteine.fn.addMenu = function () {
  window.stolpersteine.menu = window.L.leafletMenu(
    window.stolpersteine.map, {
      items: {
        Stolpersteine: {
          onClick: function () {
            window.alert('Copyright')
          }
        },
        Links: {
          onClick: function () {
            window.alert('Copyright')
          }
        },
        'Über diese Seite': {
          onClick: function () {
            window.alert('Über diese Seite')
          }
        },
        Copyright: {
          onClick: function () {
            window.alert('Copyright')
          }
        }
      }
    })
  var menuButton = window.L.easyButton({
    states: [{
      stateName: 'show-menu',
      icon: 'fa fa-bars fa-lg',
      title: 'Show Menu',
      onClick: function (btn, map) {
        window.stolpersteine.menu.options.button = btn
        window.stolpersteine.menu.show()
        btn.state('hide-menu')
      }
    }, {
      stateName: 'hide-menu',
      icon: 'fa fa-bars fa-lg',
      title: 'Hide Menu',
      onClick: function (btn, map) {
        window.stolpersteine.menu.hide()
        btn.state('show-menu')
      }
    }],
    id: 'styles-menu'
  })
  menuButton.addTo(window.stolpersteine.map)
}

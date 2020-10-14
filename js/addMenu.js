window.stolpersteine.fn.addMenu = function () {
  window.stolpersteine.menu = window.L.leafletMenu(
    window.stolpersteine.map, {
      items: {
        Stolpersteine: {
          onClick: function () {
            for (var key in window.stolpersteine.popupWindows) {
              if (key === 'stolpersteine') {
                window.stolpersteine.popupWindows.stolpersteine.show()
              } else {
                window.stolpersteine.popupWindows[key].hide()
              }
            }
          }
        },
        Links: {
          onClick: function () {
            for (var key in window.stolpersteine.popupWindows) {
              if (key === 'links') {
                window.stolpersteine.popupWindows.links.show()
              } else {
                window.stolpersteine.popupWindows[key].hide()
              }
            }
          }
        },
        'Über diese Seite': {
          onClick: function () {
            for (var key in window.stolpersteine.popupWindows) {
              if (key === 'about') {
                window.stolpersteine.popupWindows.about.show()
              } else {
                window.stolpersteine.popupWindows[key].hide()
              }
            }
          }
        },
        Copyright: {
          onClick: function () {
            for (var key in window.stolpersteine.popupWindows) {
              if (key === 'copyright') {
                window.stolpersteine.popupWindows.copyright.show()
              } else {
                window.stolpersteine.popupWindows[key].hide()
              }
            }
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

window.stolpersteine.fn.addMenu = function () {
  function genericOnClick (keyName) {
    for (var key in window.stolpersteine.popupWindows) {
      if (key === keyName) {
        window.stolpersteine.popupWindows[keyName].show()
      } else {
        window.stolpersteine.popupWindows[key].hide()
      }
    }
  }

  window.stolpersteine.menu = window.L.leafletMenu(
    window.stolpersteine.map, {
      items: {
        Stolpersteine: {
          onClick: function () {
            genericOnClick('stolpersteine')
          }
        },
        Links: {
          onClick: function () {
            genericOnClick('links')
          }
        },
        'Über diese Seite': {
          onClick: function () {
            genericOnClick('about')
          }
        },
        Copyright: {
          onClick: function () {
            genericOnClick('copyright')
          }
        },
        'Stand der Daten': {
          onClick: function () {
            genericOnClick('lastModified')
          }
        },
        Impressum: {
          onClick: function () {
            genericOnClick('impressum')
          }
        },
        Datenschutz: {
          onClick: function () {
            genericOnClick('datenschutz')
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

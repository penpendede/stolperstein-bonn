window.stolpersteine.fn.addPopupWindows = function () {
  window.stolpersteine.popupWindows = {}
  var count = Object.keys(window.stolpersteine.popupTextFiles).length
  for (const key in window.stolpersteine.popupTextFiles) {
    window.fetch(window.stolpersteine.popupTextFiles[key].template)
      .then(function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' + response.status)
          return
        }
        // Examine the text in the response
        response.text()
          .then(function (data) {
            var template = window.stolpersteine.data.lastModified
            data = window.stolpersteine.fn.processTemplate(data, template)
            window.stolpersteine.popupWindows[key] = window.L.control.window(
              window.stolpersteine.map,
              {
                title: window.stolpersteine.popupTextFiles[key].title,
                content: data,
                visible: false
              }
            )
            if (!--count) {
              window.stolpersteine.fn.addNameAutocomplete()
            }
          })
      })
      .catch(function (err) {
        console.log('Fetch Error ', err)
      })
  }
  window.stolpersteine.fn.addToolTip()
}

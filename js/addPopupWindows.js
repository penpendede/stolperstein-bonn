window.stolpersteine.fn.addPopupWindows = function () {
  window.stolpersteine.popupWindows = {}
  var count = Object.keys(window.stolpersteine.popupTextFiles).length
  for (var key in window.stolpersteine.popupTextFiles) {
    window.fetch(window.stolpersteine.popupTextFiles[key].template)
      .then(function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' + response.status)
          return
        }
        var urlSplit = response.url.split('/')
        var key = urlSplit[urlSplit.length - 1].split('.')[0]
        // Examine the text in the response
        response.text()
          .then(function (template) {
            var templateData = []
            var content
            window.stolpersteine.data.lastModified.forEach(function (modificationData) {
              ['description', 'file', 'modified'].forEach(function (attribute) {
                content = modificationData[attribute]
                if (!content && content !== '0') {
                  content = '&nbsp;'
                }
                templateData.push({
                  selector: '#' + modificationData.id + ' .' + attribute,
                  content: content
                })
              })
            })
            template = window.stolpersteine.fn.processTemplate(template, templateData)
            window.stolpersteine.popupWindows[key] = window.L.control.window(
              window.stolpersteine.map,
              {
                title: window.stolpersteine.popupTextFiles[key].title,
                content: template,
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

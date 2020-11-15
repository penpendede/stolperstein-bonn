window.stolpersteine.fn.updateFilter = function (feature) {
  window.stolpersteine.data.filterSetup = []
  var params = [
    ['Image', 'image', 'isSet'],
    ['MemorialAddr', 'memorial:addr', 'isSet'],
    ['Inscription', 'inscription', 'isSet'],
    ['Addr', 'addr:', 'isUsedPrefix'],
    ['Object', 'object:', 'isUsedPrefix']
  ]
  var values
  params.forEach(function (param) {
    values = []
    if (document.getElementById('with' + param[0]).checked) {
      values.push(true)
    }
    if (document.getElementById('without' + param[0]).checked) {
      values.push(false)
    }
    window.stolpersteine.data.filterSetup.push({
      attribute: param[1],
      filterBy: param[2],
      values: values
    })
  })
  if (document.getElementById('name').value) {
    values = []
    document.getElementById('name').value.replace('-', '').split(/\b/).forEach(function (value) {
      if (!value.match(/^\s*$/)) {
        values.push(value)
      }
    })
    window.stolpersteine.data.filterSetup.push({
      attribute: 'name',
      filterBy: 'partSoundsLike',
      values: values
    })
  }
  if (document.getElementById('memorialText').value) {
    window.stolpersteine.data.filterSetup.push({
      attribute: 'memorial:text',
      filterBy: 'partSoundsLike',
      values: [document.getElementById('memorialText').value]
    })
  }
  window.stolpersteine.fn.removeStolpersteine()
  window.stolpersteine.fn.addStolpersteine()
}

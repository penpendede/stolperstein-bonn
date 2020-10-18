window.stolpersteine.fn.updateFilter = function (feature) {
  var values = []
  if (document.getElementById('withImage').checked) {
    values.push(true)
  }
  if (document.getElementById('withoutImage').checked) {
    values.push(false)
  }
  window.stolpersteine.data.filterSetup = [
    {
      attribute: 'image',
      filterBy: 'isSet',
      values: values
    }
  ]
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

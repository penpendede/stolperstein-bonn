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
    window.stolpersteine.data.filterSetup.push({
      attribute: 'name',
      filterBy: 'partSoundsLike',
      values: [document.getElementById('name').value]
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

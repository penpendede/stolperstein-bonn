
window.stolpersteine.fn.addNameAutocompleteList = function () {
  window.stolpersteine.data.autocompleteList = []
  // window.stolpersteine.data.stolpersteine.elements[0].tags.name
  window.stolpersteine.data.stolpersteine.elements.forEach(function (element) {
    const name = element.tags.name || element.tags['memorial:name']
    window.stolpersteine.data.autocompleteList.push(name)
  })
}

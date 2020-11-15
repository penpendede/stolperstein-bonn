
window.stolpersteine.fn.addNameAutocomplete = function () {
  var autocompleteList = []
  // window.stolpersteine.data.stolpersteine.elements[0].tags.name
  window.stolpersteine.data.stolpersteine.elements.forEach(function (element) {
    var name = element.tags.name || element.tags['memorial:name']
    autocompleteList.push(name)
  })
  window.stolpersteine.nameAwesomeplete = new window.Awesomplete(document.getElementById('name'))
  window.stolpersteine.nameAwesomeplete.list = autocompleteList
  document.getElementById('name').addEventListener('awesomplete-selectcomplete', function () {
    document.getElementById('name').dispatchEvent(new window.Event('paste'))
  })
}

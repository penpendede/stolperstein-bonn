window.stolpersteine.fn.processTemplate = function (template, values) {
  var wrapper = document.createElement('div')
  var wrapperchild = document.createElement('div')
  var element
  wrapperchild.innerHTML = template
  wrapper.appendChild(wrapperchild)
  var doc = wrapper.firstChild
  values.forEach(function (value) {
    element = doc.querySelector(value.selector)
    if (element) {
      element.innerHTML = value.content
    }
  })
  return doc.innerHTML
}

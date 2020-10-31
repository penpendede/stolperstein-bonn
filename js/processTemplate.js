window.stolpersteine.fn.processTemplate = function (template, values) {
  var wrapper = document.createElement('div')
  var wrapperchild = document.createElement('div')
  wrapperchild.innerHTML = template
  wrapper.appendChild(wrapperchild)
  var doc = wrapper.firstChild
  values.forEach(function (value) {
    if (doc.querySelector('#' + value.id)) {
      doc.querySelector('#' + value.id + ' .description').innerHTML = value.description
      doc.querySelector('#' + value.id + ' .file').innerHTML = value.file || '&ndash;'
      doc.querySelector('#' + value.id + ' .modified').innerHTML = value.modified
    }
  })
  return doc.innerHTML
}

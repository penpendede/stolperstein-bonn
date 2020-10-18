window.stolpersteine.fn.addPopupWindows = function () {
  window.stolpersteine.popupWindows = {}
  for (const key in window.stolpersteine.popupTexts) {
    window.stolpersteine.popupWindows[key] = window.L.control.window(
      window.stolpersteine.map,
      {
        title: window.stolpersteine.popupTexts[key].title,
        content: window.stolpersteine.popupTexts[key].text,
        visible: false
      }
    )
  }
  const key = 'lastModified'
  const tableData = [
    '<table>',
    '<tr>',
    '<th>&nbsp;</th>',
    '<th>Letzte Aktualisierung</th>',
    '<th>Datei</th>',
    '</tr>'
  ]
  window.stolpersteine.data.lastModified.forEach(function (row) {
    tableData.push('<tr>')
    tableData.push('<td>' + row.description + '</td>')
    tableData.push('<td>' + row.modified + '</td>')
    if (row.file) {
      tableData.push('<td>' + row.file + '</td>')
    } else {
      tableData.push('<td>-</td>')
    }
    tableData.push('</tr>')
  })

  tableData.push('</table>')
  window.stolpersteine.popupWindows[key] = window.L.control.window(
    window.stolpersteine.map,
    {
      title: 'Stand der Daten',
      content: tableData.join('\n'),
      visible: false
    }
  )
  window.stolpersteine.fn.addToolTip()
  const autocompleteList = []
  // window.stolpersteine.data.stolpersteine.elements[0].tags.name
  window.stolpersteine.data.stolpersteine.elements.forEach(function (element) {
    const name = element.tags.name || element.tags['memorial:name']
    autocompleteList.push(name)
  })
  window.stolpersteine.nameAwesomeplete = new window.Awesomplete(document.getElementById('name'))
  window.stolpersteine.nameAwesomeplete.list = autocompleteList
  document.getElementById('name').addEventListener('awesomplete-selectcomplete', function () {
    document.getElementById('name').dispatchEvent(new window.Event('paste'))
  })
}

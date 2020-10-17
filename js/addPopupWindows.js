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
}

const fs = require('fs')
const https = require('https')
const path = require('path')

const tasks = [
  {
    src: 'https://stadtplan.bonn.de/geojson?Thema=21248',
    name: 'stadtgebiet',
    info: 'Fläche Stadtgebiet Bonn'
  },
  {
    src: 'https://stadtplan.bonn.de/geojson?Thema=14574',
    name: 'bezirke',
    info: 'Flächen der Stadtbezirke'
  },
  {
    src: 'https://stadtplan.bonn.de/geojson?Thema=21247',
    name: 'ortsteile',
    info: 'Flächen der Ortsteile'
  }
]

tasks.forEach(task => {
  performTask(task)
})

function performTask (task) {
  https.get(task.src, resp => {
    resp.setEncoding('utf-8')
    let data = 'window.stolpersteine.data.' + task.name + ' = '
    resp.on('data', chunk => {
      data += chunk
    })
    resp.on('end', () => {
      fs.writeFile(path.join('js', task.name + '.js'), data, err => {
        if (err) {
          return console.log(err)
        }
        console.log(task.info)
      })
    })
  }).on('error', (err) => {
    console.log('Fehler: ' + err.message)
  })
}

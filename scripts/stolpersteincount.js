const chalk = require('chalk')
const fs = require('fs')
const JSON5 = require('json5')
const path = require('path')
const insidePolygon = require('point-in-polygon')

const ortsteile = JSON5.parse( // parse as JSON5
  fs.readFileSync('js/ortsteile.js', 'utf8') // content of ortsteile.js
    .replace(/^[^=]*=\s*/, '') // without the leading assingment
)
const stolpersteine = JSON5.parse( // parse as JSON5
  fs.readFileSync('js/stolpersteine.js', 'utf8') // content of ortsteile.js
    .replace(/^[^=]*=\s*/, '') // without the leading assingment
)

const ortsteilCount = {}
const bezirkCount = {}

const ortsteilClassification = []
ortsteile.features.forEach(feature => {
  const geometry = feature.geometry.coordinates
  const ortsteil = feature.properties.ortsteil_bez
  const bezirk = feature.properties.bezirk_bez
  ortsteilClassification.push({
    geometry: geometry[0],
    ortsteil: ortsteil,
    bezirk: bezirk
  })
  ortsteilCount[ortsteil] = 0
  bezirkCount[bezirk] = 0
})

const stolpersteinPositions = []
stolpersteine.elements.forEach(element => {
  stolpersteinPositions.push([element.lon, element.lat])
})

stolpersteinPositions.forEach(stolpersteinPosition => {
  ortsteilClassification.forEach(ortsteil => {
    if (insidePolygon(stolpersteinPosition, ortsteil.geometry)) {
      ortsteilCount[ortsteil.ortsteil] += 1
      bezirkCount[ortsteil.bezirk] += 1
    }
  })
})

let data = 'window.stolpersteine.data.ortsteilCount = ' + JSON5.stringify(ortsteilCount)
fs.writeFile(path.join('js', 'ortsteilCount.js'), data, err => {
  if (err) {
    console.log(chalk.redBright.bold('[FAIL]') + ' ' + err)
    return
  }
  console.log(chalk.greenBright.bold('[OKAY]') + ' ortsteil count')
})

data = 'window.stolpersteine.data.bezirkCount = ' + JSON5.stringify(bezirkCount)
fs.writeFile(path.join('js', 'bezirkCount.js'), data, err => {
  if (err) {
    console.log(chalk.redBright.bold('[FAIL]') + ' ' + err)
    return
  }
  console.log(chalk.greenBright.bold('[OKAY]') + ' bezirk count')
})

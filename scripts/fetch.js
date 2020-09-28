const chalk = require('chalk')
const fs = require('fs')
const https = require('https')
const JSON5 = require('json5')
const path = require('path')

const tasks = JSON5.parse(fs.readFileSync('fetch_tasks.json5'))
let taskNames = []
const possibleTaskNames = []

tasks.forEach(element => {
  const name = element.name
  possibleTaskNames.push(name)
  if (process.argv.includes(name)) {
    taskNames.push(name)
  }
})
if (!taskNames.length) {
  taskNames = possibleTaskNames
}

tasks.forEach(task => {
  if (taskNames.includes(task.name)) {
    switch (task.type) {
      case 'download':
        download(task)
        break
      case 'overpass':
        task.args = {
          source: task.args.apiUrl + 'data=' + task.args.data.join(''),
          target: 'stolpersteine'
        }
        download(task)
        break
    }
  }
})

function download (task) {
  try {
    https.get(task.args.source, resp => {
      resp.setEncoding('utf-8')
      let data = 'window.stolpersteine.data.' + task.args.target + ' = '
      resp.on('data', chunk => {
        data += chunk
      })
      resp.on('end', () => {
        fs.writeFile(path.join('js', task.args.target + '.js'), data, err => {
          if (err) {
            console.log(chalk.redBright.bold('[FAIL]') + ' ' + err)
            return
          }
          console.log(chalk.greenBright.bold('[OKAY]') + ' ' + task.info)
        })
      })
    }).on('error', (error) => {
      console.log(chalk.redBright.bold('[FAIL]') + ' ' + task.info)
      console.error(error.message)
    })
  } catch (error) {
    console.log(chalk.redBright.bold('[FAIL]') + ' ' + task.info)
    console.error(error.message)
  }
}

const chalk = require('chalk')
const fs = require('fs')
const https = require('https')
const path = require('path')

const tasks = JSON.parse(fs.readFileSync('fetch_tasks.json'))

tasks.forEach(task => {
  switch (task.type) {
    case 'download':
      download(task)
      break
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
            return console.error(err)
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

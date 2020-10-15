const chalk = require('chalk')
const fs = require('fs')
const JSON5 = require('json5')
const path = require('path')

const tasks = JSON5.parse(fs.readFileSync('last_modified.json5'))
for (let i = 0; i < tasks.length; i++) {
  if (tasks[i].file) {
    tasks[i].modified = fs.statSync(tasks[i].file).mtime.toISOString()
  } else {
    tasks[i].modified = new Date().toISOString()
  }
}
const data = 'window.stolpersteine.data.lastModified = ' + JSON5.stringify(tasks)

fs.writeFile(path.join('js', 'lastmodified.js'), data, err => {
  if (err) {
    console.log(chalk.redBright.bold('[FAIL]') + ' ' + err)
    return
  }
  console.log(chalk.greenBright.bold('[OKAY]') + ' "last modified" information has been updated')
})

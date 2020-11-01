const chalk = require('chalk')
const fs = require('fs')
const JSON5 = require('json5')
const path = require('path')
const standard = require('standard')

const tasks = JSON5.parse(fs.readFileSync('last_modified.json5'))
for (let i = 0; i < tasks.length; i++) {
  if (tasks[i].file) {
    tasks[i].modified = fs.statSync(tasks[i].file).mtime.toLocaleString('de-DE')
  } else {
    tasks[i].modified = new Date().toLocaleString('de-DE')
  }
}
const data = standard.lintTextSync(
  'window.stolpersteine.data.lastModified = ' + JSON5.stringify(tasks, null, 2),
  {
    fix: true
  }
)

fs.writeFile(path.join('js', 'lastModified.js'), data.results[0].output, err => {
  if (err) {
    console.log(chalk.redBright.bold('[FAIL]') + ' ' + err)
    return
  }
  console.log(chalk.greenBright.bold('[OKAY]') + ' "last modified" information has been updated')
})

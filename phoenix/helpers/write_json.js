// Phoenix - helpers - writeJSON
function writeJSON (path, obj, callback = _.noop) {
  const str = JSON.stringify(obj, undefined, 2) || '{}'
  const content = str.replace("'", "\\'")

  writeFile(path, content, callback)
}

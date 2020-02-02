// Phoenix - helpers - readFile
function readFile (path, callback = _.noop) {
  shell(`cat ${path}`, ({ output }) => callback(output))
}

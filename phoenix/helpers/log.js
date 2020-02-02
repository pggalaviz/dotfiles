// Phoenix - helpers - log
function log (...args) {
  args.forEach(arg => {
    const str = arg ? JSON.stringify(arg, undefined, 2) || arg.toString() : arg
    Phoenix.log(str)
  })
}

console.log = log

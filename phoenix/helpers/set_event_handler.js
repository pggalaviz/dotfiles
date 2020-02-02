// Phoenix - helpers - setEventHandler
function setEventHandler (event, handler, one = false) {
  Event[one ? 'once' : 'on'](event, handler)
}

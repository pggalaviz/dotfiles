// Phoenix - helpers - getSpaceIndex
function getSpaceIndex (space = Space.active()) {
  return Space.all().findIndex(s => s.isEqual(space))
}

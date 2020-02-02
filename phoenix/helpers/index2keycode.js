// Phoenix - helpers - detectNamedAnchor
function index2keycode (index) {
  // Corresponding to numbers from 1 to 9
  const keycodes = [18, 19, 20, 21, 23, 22, 26, 28, 25]

  const keycode = keycodes[index]
  return keycode ? `${keycode}` : '' // Alfred wants a string, not a number
}

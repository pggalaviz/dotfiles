// Phoenix - shortcuts - center
setKeyHandler('c', HYPER, () => {
  const window = Window.focused()

  if (!window) return

  centerWindow(window)
})

setKeyHandler('c', HYPER_SHIFT, () => {
  const window = Window.focused()

  if (!window) return

  const frame = window.frame()

  window.setFrame({
    x: frame.x,
    y: frame.y,
    width: CENTER_WIDTH,
    height: CENTER_HEIGHT
  })

  centerWindow(window)
})

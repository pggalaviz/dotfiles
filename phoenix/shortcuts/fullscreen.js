// Phoenix - shortcuts - fullscreen

setKeyHandler('space', HYPER_SHIFT, () => {
  const window = Window.focused()

  if (!window) return

  window.setFullScreen(!window.isFullScreen())
})

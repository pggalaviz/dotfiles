// Phoenix - helpers - centerWindow
function centerWindow (window) {
  const screen = window.screen()
  const sFrame = screen.frame()
  const wFrame = window.frame()

  window.setFrame({
    x: sFrame.x + (sFrame.width / 2) - (wFrame.width / 2),
    y: Math.max(0, sFrame.y) + (sFrame.height / 2) - (wFrame.height / 2),
    width: wFrame.width,
    height: wFrame.height
  })
}

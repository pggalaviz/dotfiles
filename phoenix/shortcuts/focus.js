// Phoenix - shortcuts - focus

const launchiTerm = `
  if application "iTerm" is running then
    tell application "iTerm"
      activate
      if not (exists current window) then
        create window with default profile
      end if
    end tell
  else
    tell application "iTerm"
      create window with default profile
    end tell
  end if
`

const launchFinder = `
  tell application "Finder"
    make new Finder window to (get new window target of Finder preferences)
    activate
  end tell
`

function magiciTermOpen (window) {
  if (!window.isNormal() || !window.isMain()) return

  const name = window.app().name()

  if (!/iTerm/.test(name) || false) return

  setFrame('left', window)
}

function callbackiTerm (isNewWindow) {
  if (!isNewWindow) return

  setTimeout(() => {
    const focused = Window.focused()

    if (!focused) return

    magiciTermOpen(focused)
  }, 500)
}

const focus = [
  ['t', HYPER, ['iTerm', false, false, false, launchiTerm, callbackiTerm]], // FIXME: Ugly, but since `windowDidOpen` won't trigger, at least now it will behave as expected
  ['f', HYPER, ['Finder', false, false, false, launchFinder]]
]

setKeysHandler(focusWindow, focus)

/* global Phoenix */

// ===========
// Preferences
// ===========

require('./config/phoenix.js')
require('./config/constants.js')

// =======
// Helpers
// =======

require('./helpers/alert.js')
require('./helpers/center_window.js')
require('./helpers/detect_named_anchor.js')
require('./helpers/find_window.js')
require('./helpers/focus_window.js')
require('./helpers/get_named_anchor.js')
require('./helpers/get_named_frame.js')
require('./helpers/get_space_index.js')
require('./helpers/get_space_name.js')
require('./helpers/grow_frame.js')
require('./helpers/index2keycode.js')
require('./helpers/is_anchored.js')
require('./helpers/log.js')
require('./helpers/modal.js')
require('./helpers/modal_screen.js')
require('./helpers/modal_window.js')
require('./helpers/osascript.js')
require('./helpers/read_file.js')
require('./helpers/read_json.js')
require('./helpers/set_anchor.js')
require('./helpers/set_event_handler.js')
require('./helpers/set_events_handler.js')
require('./helpers/set_frame.js')
require('./helpers/set_key_handler.js')
require('./helpers/set_keys_handler.js')
require('./helpers/shell.js')
require('./helpers/switch_space.js')
require('./helpers/write_file.js')
require('./helpers/write_json.js')

// =========
// Shortcuts
// =========

// HYPER + c
require('./shortcuts/center.js')
// HYPER + q
// HYPER + w
// HYPER + a
// HYPER + s
require('./shortcuts/corners.js')
// HYPER + space
require('./shortcuts/expand.js')
// HYPER + t
// HYPER + f
require('./shortcuts/focus.js')
// HYPER_SHIFT + space
require('./shortcuts/fullscreen.js')
// HYPER_SHIFT + left
// HYPER_SHIFT + right
// HYPER_SHIFT + up
// HYPER_SHIFT + down
require('./shortcuts/grow.js')
// HYPER + o
// HYPER + p
require('./shortcuts/halves.js')
// HYPER + i
require('./shortcuts/info.js')
// HYPER + f8
require('./shortcuts/pause.js')
// CMD + q
require('./shortcuts/quit.js')
// HYPER + left
// HYPER + right
// HYPER + up
// HYPER + down
require('./shortcuts/sides.js')
// HYPER + 1
// HYPER + 2
// HYPER + 3
require('./shortcuts/thirds.js')

// HYPER_SHIFT + r
setKeyHandler('r', HYPER_SHIFT, () => Phoenix.reload())
// HYPER + tab
setKeyHandler('tab', HYPER, () => switchSpace(1))
// HYPER_SHIFT + tab
setKeyHandler('tab', HYPER_SHIFT, () => switchSpace(-1))

require('./spaces/list.js')
require('./spaces/overlay.js')

Phoenix.notify('Phoenix config loaded!')

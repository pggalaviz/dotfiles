// ============================
// Phoenix - Config - Constants
// ============================

/* eslint-disable no-unused-vars */

// Keys
const HYPER = ['ctrl', 'cmd']
const HYPER_SHIFT = [...HYPER, 'alt']
const CONTROL_SHIFT = ['ctrl', 'shift']
const CONTROL_ALT_SHIFT = ['ctrl', 'alt', 'shift']

// Numbers
const HIDDEN_DOCK_MARGIN = 1
const INCREMENT = 0.05

const LEFT_WIDTH_PERCENTAGE = 50 // Set it to 50 if you want symmetric left and right sides' widths
const TOP_HEIGHT_PERCENTAGE = 50 // Set it to 50 if you want symmetric top and bottom sides' heights

const CENTER_WIDTH = 1200
const CENTER_HEIGHT = 900

const GROW_AMOUNT = 50

// Focus
const FOCUS_WINDOW_CHECK_CYCLES = 10
const FOCUS_WINDOW_CHECK_INTERVAL = 250

// Modals
const MODAL_APPEARANCE = 'dark'
const MODAL_DURATION = 1
const MODAL_ANIMATION_DURATION = 0.2
const MODAL_WEIGHT = 2

// spaces
const SPACES_SWITCH_WRAP = true
const SPACES_OVERLAY_DURATION = MODAL_DURATION / 2
const SPACES_LIST_RAW_PATH = '~/.config/phoenix/spaces/list_raw.json'
const SPACES_LIST_PATH = '~/.config/phoenix/spaces/list.json'
const SPACES_ALFRED_PRESELECT = true
const SPACES_ALFRED_PRESELECT_DELAY = 0.1
const SPACES_UPDATE_CYCLES = 5
const SPACES_UPDATE_INTERVAL = 500

// other
const SHELL_PATH = '/usr/local/bin/fish'
const OSASCRIPT_PATH = '/usr/bin/osascript'
const DOUBLE_KEY_INTERVAL = 250
const QUIT_BLACKLIST = ['Finder']

module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: 'Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#7F7F7F',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // color of the text
    foregroundColor: '#d8dee9',

    // terminal background color
    backgroundColor: '#1b2b34',

    // border color (window, tabs)
    borderColor: '#1b2b34',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '5px 5px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#1b2b34',
      red: '#ec5f67',
      green: '#99c794',
      yellow: '#fac863',
      blue: '#6699cc',
      magenta: '#c594c5',
      cyan: '#62b3b2',
      white: '#d8dee9',
      lightBlack: '#65737e',
      lightRed: '#ec5f67',
      lightGreen: '#343d46',
      lightYellow: '#4f5b66',
      lightBlue: '#a7adba',
      lightMagenta: '#c0c5ce',
      lightCyan: '#ab7967',
      lightWhite: '#d8dee9'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    shell: '/usr/local/bin/fish',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,


    // shortcut to summon hyperterm
    summonShortcut: 'Shift+Cmd+Space',
  },

  // list of plugins to fetch and install from npm
  plugins: [
    'hyper-font-smoothing', // anti-aliased fonts
    'hypercwd', // open new tabs in the same cwd as current tab
    'hyperterm-summon', // summon hyperterm, system-wide, with a hotkey
    'hyperlinks'
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],
};			     


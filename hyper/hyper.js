module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: 'Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.6)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // color of the text
    foregroundColor: '#f8f8f0',

    // terminal background color
    backgroundColor: 'rgba(0,0,0,0.6)',

    // border color (window, tabs)
    borderColor: '#333',

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
      black: '#272822',
      red: '#f92672',
      green: '#a6e22e',
      yellow: '#fd971f',
      blue: '#ae81ff',
      magenta: '#f92672',
      cyan: '#66d9ef',
      white: '#f8f8f0',
      lightBlack: '#49483e',
      lightRed: '#f92672',
      lightGreen: '#a6e22e',
      lightYellow: '#e6db74',
      lightBlue: '#ae81ff',
      lightMagenta: '#f92672',
      lightCyan: '#66d9ef',
      lightWhite: '#f8f8f2'
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


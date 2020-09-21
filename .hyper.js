module.exports = {
  config: {
    updateChannel: 'canary',
    fontFamily: 'Dank Mono, SF Mono, PT Mono',
    fontWeight: 'normal',
    fontSize: 15,
    lineHeight: 1.4,
    cursorColor: 'rgba(153,153,153,1)',
    selectionColor: 'rgba(153,153,153,0.6)',
    cursorShape: 'BLOCK',
    cursorBlink: false,
    backgroundColor: 'rgba(30,30,30,1)',
    borderColor: 'rgba(0,0,0,0)',
    padding: '12px 14px',
    css: `
      body {
        /* we need to unset this for hyper to actually antialias correctly */
        -webkit-backface-visibility: unset;
        backface-visibility: unset;
      }
      .tab_tab {
        background-color: rgba(30,30,30,1) !important;
      }
      .tab_process {
        text-indent: 100%;
        white-space: nowrap;
        overflow: hidden;
        color: transparent;

        position: inherit !important;
        display: inherit !important;
      }
      .tab_process::before {
        margin-left: calc(50% - 7px);
      }
      .tab_textActive {
        background-color: rgba(30,30,30,1) !important;
      }
      .footer_footer {
        background-color: rgba(52, 52, 52, 1);
      }
    `,
    colors: {
      black: '#000000',
      red: '#FD8273',
      green: '#A1D87A',
      yellow: '#C7C329',
      blue: '#8CD1C3',
      magenta: '#FD7CB2',
      cyan: '#A79FF5',
      white: '#ffffff',
      lightBlack: '#555',
      lightRed: '#FD8273',
      lightGreen: '#BBF994',
      lightYellow: '#FFFA72',
      lightBlue: '#8CD1C3',
      lightMagenta: '#FD7CB2',
      lightCyan: '#A79FF5',
      lightWhite: '#FFFFFF',
    },

    shell: '/usr/local/bin/fish',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false
  },
  plugins: [
    'hypercwd',
    'hyper-alt-click',
    'hyper-tabs-enhanced',
    'baevra-hyper-statusline'
  ],
  keymaps: {
    'editor:deletePreviousWord': 'cmd+backspace',
    'editor:deleteBeginningLine': ''
  }
};

module.exports = {
	updateChannel: 'canary',
	config: {
	  // default font size in pixels for all tabs
	  fontSize: 13,
	  windowSize: [1080, 720],
	  fontFamily: '"Operator Mono","MesloLGS NF"',
	  cursorShape: 'BLOCK',
	  wickedBorder: false,
	  padding: '10px',
	  shell: '/bin/zsh'
	},


	plugins: ['hyperterm-cobalt2-theme', 'hyper-material-theme', 'hyper-search'],

	// in development, you can create a directory under
	// `~/.hyperterm_plugins/local/` and include it here
	// to load it and avoid it being `npm install`ed
	// localPlugins: ['hyperterm-cobalt2-theme'],
};


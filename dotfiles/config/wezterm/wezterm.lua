local wez = require("wezterm")
local appearance = require("lua.appearance")
local mappings = require("lua.mappings")
-- https://github.com/mrjones2014/smart-splits.nvim?tab=readme-ov-file#wezterm
local smart_splits = wez.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")

local c = {}

c = wez.config_builder()

local platform
if wez.target_triple == "aarch64-apple-darwin" then
	platform = "mac"
elseif wez.target_triple == "x86_64-pc-windows-msvc" then
	platform = "windows"
else
	platform = "linux"
end

c.unix_domains = {
	{
		name = "unix",
	},
}

-- This causes `wezterm` to act as though it was started as
-- `wezterm connect unix` by default, connecting to the unix
-- domain on startup.
-- If you prefer to connect manually, leave out this line.
c.default_gui_startup_args = { "connect", "unix" }
-- current wayland version isn't moveable
c.enable_wayland = false

c.font_size = 11.0
c.audible_bell = "Disabled"
c.adjust_window_size_when_changing_font_size = false
c.scrollback_lines = 3000
c.default_workspace = "main"
c.status_update_interval = 2000
c.default_prog = { "zsh", "-l" }

if platform == "mac" then
	c.set_environment_variables = {
		PATH = "/opt/homebrew/bin/:" .. os.getenv("PATH"),
	}
end

appearance.apply_to_config(c)
mappings.apply_to_config(c)

-- Needs to be last or will be overriden by previous keymaps
smart_splits.apply_to_config(c)

return c
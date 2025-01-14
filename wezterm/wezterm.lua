local wezterm = require("wezterm")
local keymaps = require("configs.keymaps")
local config = wezterm.config_builder()

-- Sets color scheme directory and sets the theme
config.color_scheme_dirs = {'./colors/'}
config.color_scheme = 'onedarkpro_onedark'

local launch_menu = {}

--- Setup PowerShell options

--- Set Pwsh as the default on Windows
config.default_prog = { "pwsh.exe", "-NoLogo" }
table.insert(launch_menu, {
	label = "Pwsh",
	args = { "pwsh.exe", "-NoLogo" },
})
table.insert(launch_menu, {
	label = "PowerShell",
	args = { "powershell.exe", "-NoLogo" },
})
table.insert(launch_menu, {
	label = "Pwsh No Profile",
	args = { "pwsh.exe", "-NoLogo", "-NoProfile" },
})
table.insert(launch_menu, {
	label = "PowerShell No Profile",
	args = { "powershell.exe", "-NoLogo", "-NoProfile" },
})
--- Default config settings
config.scrollback_lines = 7000
config.hyperlink_rules = wezterm.default_hyperlink_rules()
config.launch_menu = launch_menu
config.default_cursor_style = "BlinkingBar"
config.colors = {
	cursor_bg = "#A6ACCD",
	cursor_border = "#A6ACCD",
	cursor_fg = "#1B1E28",
}
config.font_size = 12
config.font = wezterm.font 'JetBrains Mono'

return config

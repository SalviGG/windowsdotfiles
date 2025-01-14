local wezterm = require("wezterm")
local act = wezterm.action

return {
	keys = {
		{ key = "Tab", mods = "CTRL", action = act.ActivateTabRelative(-1) },
		{ key = "Tab", mods = "SHIFT|CTRL", action = act.ActivateTabRelative(-1) },
		{ key = "Enter", mods = "ALT", action = act.ToggleFullScreen },
		
		-- add new panes
		{ key = "v", mods = "Super", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) }
		
	},
	mouse_bindings = {
		-- Change the default click behavior so that it only selects
		-- text and doesn't open hyperlinks
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "NONE",
			action = act.CompleteSelection("ClipboardAndPrimarySelection"),
		},

		-- and make CTRL-Click open hyperlinks
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = act.OpenLinkAtMouseCursor,
		},
		{
			event = { Down = { streak = 3, button = "Left" } },
			action = wezterm.action.SelectTextAtMouseCursor("SemanticZone"),
			mods = "NONE",
		},
	}
}

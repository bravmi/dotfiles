local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

-- config.color_scheme = 'iTerm2 Pastel Dark Background'
config.color_scheme = "Earthsong"
config.font = wezterm.font('Monaco')
config.font_size = 14.5
config.default_prog = { '/opt/homebrew/bin/fish' }
config.tab_bar_at_bottom = true
config.window_frame = {
  font = wezterm.font("Monaco"),
  font_size = 14.5,
}
config.command_palette_font_size = 14.5

config.window_close_confirmation = "NeverPrompt"

wezterm.on('update-right-status', function(window, pane)
  window:set_right_status(window:active_workspace())
end)

-- config.freetype_load_flags = 'NO_HINTING'
-- config.freetype_load_target = 'Light'
-- config.freetype_render_target = 'HorizontalLcd'
-- config.front_end = 'WebGpu'
-- config.bold_brightens_ansi_colors = false
-- config.font_rules = {
--   {
--     intensity = 'Bold',
--     font = wezterm.font('Monaco', { weight = 'DemiBold', stretch = 'Normal' })
--   }
-- }

config.keys = {
  {
    mods = 'CMD',
    key = 'd',
    action = wezterm.action.SendKey { mods = 'CTRL', key = 'd' },
  },
  {
    mods = 'CMD',
    key = 'c',
    action = wezterm.action.SendKey { mods = 'CTRL', key = 'c' },
  },
  {
    mods = 'CMD|ALT',
    key = 'LeftArrow',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    mods = 'CMD|ALT',
    key = 'RightArrow',
    action = wezterm.action.ActivateTabRelative(1),
  },
  {
    mods = 'CMD',
    key = 's',
    action = wezterm.action.SendKey { mods = 'CTRL', key = 's' },
  },
  {
    mods = 'CMD',
    key = 'q',
    action = wezterm.action.SendKey { mods = 'CTRL', key = 'q' },
  },
  {
    mods = "SHIFT|SUPER",
    key = "p",
    action = wezterm.action.ActivateCommandPalette
  },
  {
    key = '9',
    mods = 'ALT',
    action = wezterm.action.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES' },
  },
  { key = '`', mods = 'CMD', action = act.SwitchWorkspaceRelative(1) },
  { key = '`', mods = 'CMD', action = act.SwitchWorkspaceRelative(-1) },
}

return config

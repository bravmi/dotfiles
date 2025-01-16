local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'Monaco'
config.font_size = 14.5
config.default_prog = { '/opt/homebrew/bin/fish' }
config.tab_bar_at_bottom = true
config.window_frame = {
  font_size = 14.5
}

config.keys = {
  {
    mods = "CMD",
    key = "d",
    action = wezterm.action.SendKey { mods = "CTRL", key = "d" },
  },
  {
    mods = "CMD",
    key = "c",
    action = wezterm.action.SendKey { mods = "CTRL", key = "c" },
  },
  {
    key = 'LeftArrow',
    mods = 'CMD',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    key = 'RightArrow',
    mods = 'CMD',
    action = wezterm.action.ActivateTabRelative(1),
  },
}

return config

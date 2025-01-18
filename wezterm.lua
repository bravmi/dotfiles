local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font('Monaco')
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
    action = wezterm.action.SendKey { mods = "CTRL", key = "s" },
  },
  {
    mods = 'CMD',
    key = 'q',
    action = wezterm.action.SendKey { mods = "CTRL", key = "q" },
  }
}

return config

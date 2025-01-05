local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'Monaco'
config.font_size = 14.5
config.default_prog = { '/opt/homebrew/bin/fish' }

return config

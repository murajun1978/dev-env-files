local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font('Hack Nerd Font Mono')
config.font_size = 13

config.background = {
  {
    source = {
      File = '/Users/murajun1978/Pictures/wallpapers/miko/20240816-2040_a599bd94d1847c98e2b260baded1e5e0.png',
    },
    repeat_x = 'Mirror',
    hsb = {
      brightness = 0.01
    },
    attachment = { Parallax = 0.1 },
  }
}

-- and finally, return the configuration to wezterm
return config

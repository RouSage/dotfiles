local wezterm = require 'wezterm'
local act = wezterm.action

local config = wezterm.config_builder()

config.automatically_reload_config = true
config.color_scheme = 'Atelier Cave (base16)'
config.font = wezterm.font 'MesloLGM Nerd Font'
config.font_size = 12
config.show_new_tab_button_in_tab_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.window_close_confirmation = 'AlwaysPrompt'
config.initial_rows = 50
config.initial_cols = 160
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 15
config.keys = {
    {
        key = "h",
        mods = "CTRL",
        action = act.ActivatePaneDirection 'Left'
    },
    {
        key = "l",
        mods = "CTRL",
        action = act.ActivatePaneDirection 'Right'
    },
    {
        key = "j",
        mods = "CTRL",
        action = act.ActivatePaneDirection 'Down'
    },
    {
        key = "k",
        mods = "CTRL",
        action = act.ActivatePaneDirection 'Up'
    },
    {
        key = "w",
        mods = "CMD",
        action = act.CloseCurrentPane { confirm = true }
    },
    {
        key = "|",
        mods = "CMD|SHIFT",
        action = act.SplitHorizontal { domain = "CurrentPaneDomain" }
    },
    {
        key = "_",
        mods = "CMD|SHIFT",
        action = act.SplitVertical { domain = "CurrentPaneDomain" }
    },
}

return config

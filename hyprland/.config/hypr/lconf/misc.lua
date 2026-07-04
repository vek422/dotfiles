hl.config({
    misc = {
        force_default_wallpaper         = 0,
        disable_hyprland_logo           = true,
        enable_swallow                  = true,
        swallow_regex                   = "^(kitty)$",
        animate_mouse_windowdragging    = true,
        animate_manual_resizes          = true,
        focus_on_activate               = true,
    },
})

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
    debug={
        -- overlay = true,
        vfr = false,
    }
})

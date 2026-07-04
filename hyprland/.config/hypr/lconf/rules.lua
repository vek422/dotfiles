-- Suppress maximize events from all apps
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Center float large (qimgv, mpv)
hl.window_rule({
    name  = "center-float-large",
    match = { class = "^(center-float-large)$|^(.*qimgv.*)$|^(.*mpv.*)$" },
    float = true,
    size  = "70% 70%",
    center = true,
})

-- Center float (file dialogs)
hl.window_rule({
    name  = "center-float",
    match = { class = "^(center-float)$" },
    float = true,
    size  = "50% 50%",
    center = true,
})
hl.window_rule({
    name  = "center-float-file-dialogs",
    match = { title = "^(.*Open Folder.*)$|^(.*Open File.*)$|^(.*Save File.*)$|^(.*Save Folder.*)$|^(.*Save Image.*)$|^(.*Save As.*)$|^(.*Open As.*)$" },
    float = true,
    size  = "50% 50%",
    center = true,
})

-- Center float mini (calculators, small apps)
hl.window_rule({
    name  = "center-float-mini",
    match = { class = "^(center-float-mini)$|^(.*galculator.*)$|^(.*ytdlp-gui.*)$|^(.*udiskie.*)$|^(.*Calculator.*)$" },
    float = true,
    size  = "30% 40%",
    center = true,
})

-- Scratchpad terminal
hl.window_rule({
    name  = "scratchpad-term",
    match = { class = "^(kitty)$", workspace = "special:term" },
    size  = "75% 55%",
    float = true,
    center = true,
})

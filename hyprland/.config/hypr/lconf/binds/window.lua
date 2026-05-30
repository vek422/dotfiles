local v = require("lconf.vars")

hl.bind(v.mainMod .. " + Q",       hl.dsp.window.close())
hl.bind(v.mainMod .. " + M",       hl.dsp.exit())
hl.bind(v.mainMod .. " + E",       hl.dsp.exec_cmd("dolphin"))
hl.bind(v.mainMod .. " + X",       hl.dsp.window.float({ action = "toggle" }))
hl.bind(v.mainMod .. " + P",       hl.dsp.window.pseudo())
hl.bind(v.mainMod .. " + L",       hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ 1 && hyprlock"))
hl.bind(v.mainMod .. " + SHIFT + ALT + L", hl.dsp.exec_cmd("systemctl hibernate"))

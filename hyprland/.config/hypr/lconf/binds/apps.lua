local v = require("lconf.vars")

-- Application launchers
hl.bind(v.mainMod .. " + RETURN",  hl.dsp.exec_cmd(v.terminal))
hl.bind(v.mainMod .. " + N",       hl.dsp.exec_cmd(v.networkManager))
hl.bind(v.mainMod .. " + W",       hl.dsp.exec_cmd(v.browser))
hl.bind(v.mainMod .. " + SPACE",   hl.dsp.exec_cmd(v.tofi))
hl.bind(v.mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(v.wallpaperPicker))
hl.bind(v.mainMod .. " + Print",   hl.dsp.exec_cmd(v.screenshot))
hl.bind(v.mainMod .. " + T",       hl.dsp.exec_cmd(v.toggleBar))
hl.bind(v.mainMod .. " + V",       hl.dsp.exec_cmd(v.clipboard))
hl.bind(v.mainMod .. " + Escape",  hl.dsp.exec_cmd(v.powerMenu))
hl.bind(v.mainMod .. " + A",       hl.dsp.exec_cmd(v.audioSwitcher))

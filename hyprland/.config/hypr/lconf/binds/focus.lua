local v = require("lconf.vars")

hl.bind(v.mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(v.mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(v.mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(v.mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

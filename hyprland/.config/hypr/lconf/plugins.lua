local v = require("lconf.vars")
hl.bind( v.mainMod .. " + TAB", hl.dsp.exec_cmd("qs ipc -c overview call overview toggle"))

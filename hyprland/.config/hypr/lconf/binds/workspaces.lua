local v = require("lconf.vars")

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10
    hl.bind(v.mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i }))
    hl.bind(v.mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Special workspace (scratchpad)
hl.bind(v.mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(v.mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

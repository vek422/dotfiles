local M = {}

M.mainMod        = "SUPER"
M.terminal       = "kitty"
M.browser        = "firefox"
M.networkManager = "kitty --class center-float -e nmtui"
M.toggleBar      = "~/.config/hypr/scripts/toggle_bar"
M.kbdlight       = "~/.config/hypr/scripts/kbdlight"
M.tofi           = "tofi-drun --horizontal true --drun-launch=true"
M.wallpaperPicker = "~/.config/rofi/scripts/wallpaper/wallpaper"
M.screenshot     = "~/.config/rofi/scripts/screenshot/screenshot"
M.clipboard      = "~/.config/rofi/scripts/clipboard/clipboard"

return M

local M = {}

M.mainMod        = "SUPER"
M.terminal       = "kitty"
M.browser        = "brave"
M.networkManager = "kitty --class center-float -e nmtui"
M.toggleBar      = "~/.config/hypr/scripts/toggle_bar"
M.kbdlight       = "~/.config/hypr/scripts/kbdlight"
M.tofi           = "tofi-drun --horizontal true --drun-launch=true"
M.wallpaperPicker = "~/.config/rofi/scripts/wallpaper/wallpaper"
M.screenshot     = "~/.config/rofi/scripts/screenshot/screenshot"
M.clipboard      = "~/.config/rofi/scripts/clipboard/clipboard"
M.powerMenu      = "~/.config/hypr/scripts/power_menu.sh"
M.audioSwitcher  = "~/.config/hypr/scripts/audio_switcher.sh"

return M

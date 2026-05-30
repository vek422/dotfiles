hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_STYLE_OVERRIDE", "kvantum")

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("ELECTRON_ENABLE_WAYLAND", "1")

hl.env("WLR_DRM_NO_ATOMIC", "0")
hl.env("WLR_DRM_DEVICES", "/dev/dri/card0")

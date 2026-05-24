
-- Load keybinds
require("conf")
require("keybinds")
require("monitors")
hl.on("hyprland.start", function ()
    hl.exec_cmd("waybar")
end)
-- hl.bind("SUPER", "M", "exec", "notify-send LUA_WORKS")

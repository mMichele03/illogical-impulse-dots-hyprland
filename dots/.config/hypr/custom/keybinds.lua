-- # Add stuff here
-- # Use #! to add an extra column on the cheatsheet
-- # Use ##! to add a section in that column
-- # Add a comment after a bind to add a description, like above

-- ##! Config
hl.bind("CTRL + SUPER + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/illogical-impulse/config.json"),
    { description = "Edit shell config" })
hl.bind("CTRL + SUPER + ALT + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"),
    { description = "Edit user keybinds" })
hl.bind("CTRL + SUPER + c", hl.dsp.exec_cmd("xdg-open ~/.config"),
    { description = "Open .config folder" })

--##! Logout
local qsIpcCall = "qs -c $qsConfig ipc call"
local qsIsAlive = qsIpcCall .. " TEST_ALIVE"

hl.unbind("CTRL + ALT + Delete")
hl.bind("SUPER + Escape", hl.dsp.global("quickshell:sessionToggle"), { description = "Shell: Toggle session menu" })
hl.bind("SUPER + Escape", hl.dsp.exec_cmd(qsIsAlive .. " || pkill wlogout || wlogout -p layer-shell"))

hl.bind("SUPER + S", hl.dsp.exec_cmd("hyprctl clients -j | jq -r '.[].class' | grep 'Spotify' || spotify"))

hl.bind("SUPER + P", hl.dsp.exec_cmd("nwg-displays"))

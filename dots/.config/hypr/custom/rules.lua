-- WORKSPACES
-- require("workspaces")
hl.workspace_rule({ workspace = "1", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "6", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "7", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "8", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "9", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "10", monitor = "eDP-1" })

-- WINDOWS
hl.window_rule({
    match = { class = "Spotify" },
    workspace = "special:special",
})

hl.window_rule({
    match = { title = "Spotify - Web Player: Music for everyone" },
    float = true,
    size = { "(monitor_w*.20)", "(monitor_h*.10)" },
    move = { "(monitor_w*.78)", "(monitor_h*.05)" },
    pin = true,
    border_size = 0,
    opacity = "0.8 0.6",
    no_shadow = true,
})

hl.window_rule({
    match = { class = "^chrome-.*-Default$" },
    float = true,
    size = { "(monitor_w*.90)", "(monitor_h*.90)" },
})

hl.window_rule({
    match = { class = "Bitwarden" },
    float = true,
    size = { "(monitor_w*.90)", "(monitor_h*.90)" },
})

hl.window_rule({
    match = { class = "nwg-displays" },
    float = true,
})

hl.window_rule({
    match = { initial_title = "Shotcut" },
    float = true,
    center = true,
    size = { "310", "310" },
})

hl.window_rule({
    match = { class = "REAPER" },
    center = true,
})

hl.window_rule({
    match = { class = "Apps2Samsung" },
    float = true,
})

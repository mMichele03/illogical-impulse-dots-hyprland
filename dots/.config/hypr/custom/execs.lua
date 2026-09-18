-- put former exec-once commands inside the func and former exec commands outside
hl.on("hyprland.start", function()
    hl.exec_cmd("go-hass-agent")
    hl.exec_cmd("bash $HOME/.config/hypr/custom/scripts/start_bitwarden.sh")
end)

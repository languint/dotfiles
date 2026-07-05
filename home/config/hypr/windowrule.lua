local rules = {
    { match = { class = "file_progress" },                                float = true },
    { match = { class = "confirm" },                                      float = true },
    { match = { class = "dialog" },                                       float = true },
    { match = { class = "download" },                                     float = true },
    { match = { class = "notification" },                                 float = true },
    { match = { class = "error" },                                        float = true },
    { match = { class = "splash" },                                       float = true },
    { match = { class = "confirmreset" },                                 float = true },
    { match = { title = "Open File" },                                    float = true },
    { match = { title = "branchdialog" },                                 float = true },
    { match = { class = "viewnior" },                                     float = true },
    { match = { class = "pavucontrol-qt" },                               float = true },
    { match = { class = "pavucontrol" },                                  float = true },
    { match = { class = "file-roller" },                                  float = true },
    { match = { class = "mpv" },                                          idle_inhibit = "focus" },

    { match = { title = "^(Media viewer)$" },                             float = true },
    { match = { title = "^(Picture-in-Picture)$" },                       float = true },
    { match = { title = "^(Picture-in-Picture)$" },                       pin = true },
    { match = { class = "^(vesktop)$", title = "^(Discord Popout)$" },    float = true },
    { match = { class = "^(vesktop)$", title = "^(Discord Popout)$" },    pin = true },
    { match = { class = "^(steam)$", title = "^(Friends List)$" },        float = true },
    { match = { class = "^(nmgui)$", title = "^(.*Network Manager.*)$" }, float = true },
}

for _, rule in ipairs(rules) do
    hl.window_rule(rule)
end

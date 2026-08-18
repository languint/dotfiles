{ ... }:

{
  home.file.".config/hypr/monitor.lua" = {
    force = true;
    text = ''
      hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })
    '';
  };

  home.file.".config/waybar/config.jsonc" = {
    force = true;
    source = ./waybar.laptop.jsonc;
  };
}

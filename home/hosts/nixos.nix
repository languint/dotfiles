{
  home.file.".config/hypr/monitor.lua" = {
    force = true;
    text = ''
      hl.monitor({ output = "DP-2", mode = "1920x1080@165", position = "0x0", scale = 1 })
      hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@144", position = "1920x0", scale = 1 })
    '';
  };

  home.sessionVariables = {
    WLR_DRM_DEVICES = "/dev/dri/card0";
    WLR_NO_HARDWARE_CURSORS = "1";
    WLR_RENDERER = "vulkan";
  };
}

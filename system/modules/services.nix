{ pkgs, ... }:

{
  services = {
    dbus.enable = true;

    xserver = {
      enable = true;
      xkb.layout = "us";
    };

    displayManager = {
      sddm.enable = true;
    };

    gvfs.enable = true;
    udisks2.enable = true;

    flatpak.enable = true;

    ollama = {
      enable = true;
      package = pkgs.ollama-rocm;
      rocmOverrideGfx = "10.3.0";
    };
  };
}

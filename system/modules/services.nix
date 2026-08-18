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

    udev = {
      packages = [ pkgs.platformio-core ];
    };

    mullvad-vpn = {
      enable = true;
      package = pkgs.mullvad-vpn;
    };
  };
}

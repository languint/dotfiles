{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  # Desktop-only services. Keep these out of shared modules and hosts/laptop.
  networking.firewall.allowedTCPPorts = [ 11434 ];

  services.ollama = {
    enable = true;
    package = pkgs.ollama-rocm;
    rocmOverrideGfx = "10.3.0";
    # Docker cannot use 127.0.0.1; compose also needs the port open on the host firewall.
    host = "0.0.0.0";
    openFirewall = true;
  };

  services.plex = {
    enable = true;
    openFirewall = true;
  };

  systemd.tmpfiles.rules = [
    "d /mnt/storage 0755 longuint users - -"
  ];
}

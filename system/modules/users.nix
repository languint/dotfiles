{ config, pkgs, ... }:

{
  users.users.longuint = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  systemd.tmpfiles.rules = [
    "d /mnt/storage 0755 longuint users - -"
  ];
}

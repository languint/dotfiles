{ pkgs, ... }:

{
  users.users.longuint = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
      "input"
      "dialout"
      "docker"
      "tty"
      "plugdev"
    ];
  };
}

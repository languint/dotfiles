{ config, pkgs, ... }:

{
  hardware = {
      bluetooth.enable = true;
  };

  hardware.graphics = {
      enable = true;
  };
}

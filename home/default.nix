{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./user
  ];

  home.username = "longuint";
  home.homeDirectory = "/home/longuint";
  home.stateVersion = "26.05";
}

{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    # Development
    pkgs.gh
    pkgs.code-cursor
    pkgs.just 

    # Toolchain
    pkgs.rustup
    pkgs.pnpm
    pkgs.python311
    pkgs.nodejs
    pkgs.go
    pkgs.nixfmt

    # Gaming
    pkgs.steam

    # Social
    pkgs.discord

    # Theming
    pkgs.papirus-folders
    pkgs.adwaita-icon-theme

    # Utilities
    pkgs-unstable.hyprshot
    pkgs.nmgui
    pkgs.overskride
    pkgs.psmisc
  ];
}

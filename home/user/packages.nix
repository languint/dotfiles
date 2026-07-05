{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    # Development
    pkgs.gh

    # Toolchain
    pkgs.rustup
    pkgs.pnpm
    pkgs.python311
    pkgs.nodejs


    # Text Editors
    pkgs.zed-editor

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

{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    # Development
    pkgs.gh
    pkgs.just
    pkgs.beekeeper-studio

    # Toolchain
    pkgs.rustup
    pkgs.cargo-nextest
    pkgs.trunk

    pkgs.pnpm
    pkgs.python311
    pkgs.nodejs
    pkgs.nixfmt
    pkgs.gcc

    # Physical Engineering
    pkgs.kicad
    pkgs.blender

    # Theming
    pkgs.papirus-folders
    pkgs.adwaita-icon-theme

    # Utilities
    pkgs-unstable.hyprshot
    pkgs.brightnessctl
    pkgs.nmgui
    pkgs.overskride
    pkgs.psmisc
    pkgs.ffmpeg
    pkgs.localsend
    pkgs.qbittorrent
    pkgs.vlc
  ];
}

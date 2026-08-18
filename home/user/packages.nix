{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    # Development
    pkgs.gh
    pkgs.code-cursor
    pkgs.just
    pkgs.beekeeper-studio
    pkgs.vscode
    pkgs.headlamp
    pkgs.android-studio

    # Toolchain
    pkgs.rustup
    pkgs.cargo-nextest
    pkgs.trunk

    pkgs.pnpm
    pkgs.python311
    pkgs.nodejs
    pkgs.go
    pkgs.nixfmt
    pkgs.gcc

    pkgs.obsidian

    # Physical Engineering
    pkgs.kicad
    pkgs.blender
    pkgs.freecad

    # Gaming
    pkgs.steam
    pkgs.protontricks

    # Social
    pkgs.discord

    # Theming
    pkgs.papirus-folders
    pkgs.adwaita-icon-theme

    pkgs.arena

    # Utilities
    pkgs-unstable.hyprshot
    pkgs.brightnessctl
    pkgs.nmgui
    pkgs.overskride
    pkgs.psmisc
    pkgs.ffmpeg
    pkgs.localsend
    pkgs.postgresql_18
    pkgs.qbittorrent
    pkgs.vlc
    pkgs.supercell-wx
    pkgs.kubectl
    pkgs.obs-studio  
  ];
}

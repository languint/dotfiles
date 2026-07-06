{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    fastfetch

    nautilus

    home-manager

    ripgrep

    flatpak-builder

    gnumake

    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
  ];
}

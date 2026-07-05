{ pkgs, ... }:

{
  stylix = {
    enable = true;

    image = ../config/wallpapers/nix-wallpaper.png;

    polarity = "dark";


    base16Scheme = {
      base00 = "1f1f1f";
      base01 = "2d2d2d";
      base02 = "2b2b2b";
      base03 = "616161";
      base04 = "858585";
      base05 = "cccccc";
      base06 = "ffffff";
      base07 = "e0e0e0";
      base08 = "f14c4c";
      base09 = "b5cea8";
      base0A = "dcdcaa";
      base0B = "ce9178";
      base0C = "4fc1ff";
      base0D = "007acc";
      base0E = "c586c0";
      base0F = "9cdcfe";
    };

    cursor = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
      size = 24;
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
    };

    icons = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      light = "Papirus-Light";
      dark = "Papirus-Dark";
    };

    # iconTheme = {
    #   enable = true;
    #   package = pkgs.papirus-icon-theme;

    # };

    targets.firefox.profileNames = [ "default" ];
    targets.gtk.enable = true;
  };
}

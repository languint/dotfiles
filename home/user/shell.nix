{ config, pkgs, ... }:
let
  myAliases = {
    fullClean = ''
      nix-collect-garbage --delete-old

      sudo nix-collect-garbage -d

      sudo /run/current-system/bin/switch-to-configuration boot
    '';

    rebuild = "sudo nixos-rebuild switch --flake ~/dotfiles/";
    fullRebuild = "sudo nixos-rebuild switch --flake ~/dotfiles/ && home-manager switch --flake ~/dotfiles/";
    homeRebuild = "home-manager switch --flake ~/dotfiles/";
    purgeConfig = "find ~/.config -type f -name \"*.backup\" -delete";
};
in
{
  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      syntaxHighlighting.enable = true;
      shellAliases = myAliases;
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "history"
          "wd"
        ];
      };
    };
  };
}

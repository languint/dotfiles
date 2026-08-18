{ hostname ? "nixos", ... }:

{
  imports = [
    ./user
    ./hosts/${hostname}.nix
  ];

  home.username = "longuint";
  home.homeDirectory = "/home/longuint";
  home.stateVersion = "26.05";
}

{
  description = "longuint NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/release-26.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:nix-community/stylix/release-26.05";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, stylix, ... }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
      # Add a machine by copying hosts/laptop and appending the hostname here.
      hosts = [ "nixos" "laptop" ];

      mkNixos = hostname: lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit pkgs-unstable inputs hostname;
        };
        modules = [
          stylix.nixosModules.stylix
          ./system/configuration.nix
          ./hosts/${hostname}
          { networking.hostName = hostname; }
        ];
      };

      mkHome = hostname: home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {
          inherit pkgs-unstable inputs hostname;
        };
        modules = [
          stylix.homeModules.stylix
          ./home
        ];
      };
    in {
      nixosConfigurations = lib.genAttrs hosts mkNixos;

      homeConfigurations = {
        longuint = mkHome "nixos";
      } // lib.genAttrs hosts mkHome;
    };
}

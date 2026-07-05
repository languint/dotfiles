{
  imports = [
    ./config.nix
    ./environment.nix
    ./git.nix
    ./gtk.nix
    ./packages.nix
    ./programs.nix
    ./shell.nix
    ./stylix.nix
    ./zed.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
}

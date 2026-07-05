{ pkgs, lib, ... }: {
  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" "toml" ];
    extraPackages = [ pkgs.nixd ];
    userSettings = lib.mkForce {
      disable_ai = true;

      ui_font_size = 13.0;
      buffer_font_size = 15.0;

      project_panel = {
        dock = "right";
      };

      git_panel = {
        dock = "left";
      };

      languages = {
        Nix = {
          language_servers = [ "nixd" ];
          formatter = {
            external = {
              command = "nixpkgs-fmt";
            };
          };
        };
      };
      lsp = {
        nixd = {
          settings = {
            nixpkgs = {
              expr = "import <nixpkgs> {}";
            };
          };
        };
      };
    };
  };
}

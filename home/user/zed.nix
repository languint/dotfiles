{ pkgs, lib, ... }: {
  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" "toml" ];
    extraPackages = [ pkgs.nixd ];
    userSettings = lib.mkForce {
      disable_ai = true;

      ui_font_size = 18.0;
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
        Go = {
          language_servers = [ "gopls" ];
          code_actions_on_save = {
            "source.organizeImports" = true;
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
        gopls = {
          binary = {
            path = "gopls";
          };
        };
      };

      diagnostics = {
        inline = {
          enabled = true;
        };
      };
    };
  };
}

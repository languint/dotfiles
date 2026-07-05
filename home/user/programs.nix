{ ... }:
{
  programs.firefox = {
    enable = true;
  };

  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "https";
    };
  };

  programs.home-manager.enable = true;
}

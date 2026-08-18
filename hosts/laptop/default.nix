{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  services.ollama.enable = false;
  services.plex.enable = false;

  services.power-profiles-daemon.enable = true;

  services.libinput = {
    enable = true;
    touchpad = {
      tapping = true;
      naturalScrolling = true;
      disableWhileTyping = true;
    };
  };

  services.logind.settings.Login = {
    HandleLidSwitch = "suspend";
    HandleLidSwitchExternalPower = "suspend";
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
  ];
}

{ config, pkgs, ... }:

{
  # Bluetooth is not enabled by KDE environment
  # by default, which is weird.
  hardware.bluetooth.enable = true;

  services.xserver = {
    enable = true;
    layout = "us";
    xkbOptions = "";
    displayManager.sddm.enable = true;
    desktopManager.plasma5.enable = true;
  };
  programs.dconf.enable = true;
}

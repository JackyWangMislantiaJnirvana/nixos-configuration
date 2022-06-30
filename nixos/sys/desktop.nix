{ config, pkgs, ... }:

{
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  systemd.services.upower.enable = true;

  services = {
    dbus = {
        enable = true;
        packages = [ pkgs.dconf ];
    };

    xserver = {
      # Enable the X11 windowing system.
      enable = true;

      # Configure keymap in X11.
      layout = "us";
      xkbOptions = "caps:ctrl_modifier";

      libinput = {
        enable = true;
        mouse.naturalScrolling = true;
      };

      displayManager.defaultSession = "none+xmonad";

      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
      };
    };
  };
}

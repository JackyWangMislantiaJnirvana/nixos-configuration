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

    picom = {
      enable = true;
      vSync = true;
      # It magically fixes the tearing problem
      experimentalBackends = true;
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
        touchpad.naturalScrolling = true;
      };

      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
	extraPackages = hp: [
	  hp.dbus
	  hp.monad-logger
	  hp.xmonad-contrib
	  hp.xmonad
	];
	config = ./config.hs;
      };

      displayManager.defaultSession = "none+xmonad";
    };
  };
}

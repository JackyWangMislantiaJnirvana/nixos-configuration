# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [];
  boot.kernelModules = [];
  boot.extraModulePackages = [];

  fileSystems."/" =
    {
      device = "/dev/disk/by-uuid/e3724f8c-ddd0-4595-b342-eff7c0d36212";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    {
      device = "/dev/disk/by-uuid/1E1F-3C49";
      fsType = "vfat";
    };

  swapDevices =
    [
      { device = "/dev/disk/by-uuid/d9307719-caec-4316-9dac-5e9820d4be40"; }
    ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}

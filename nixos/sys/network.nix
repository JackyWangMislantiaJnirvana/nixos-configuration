{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixbook";
    networkmanager.enable = true;

    # The global useDHCP flag is deprecated, therefore explicitly set to false here.
    # Per-interface useDHCP will be mandatory in the future, so this generated config
    # replicates the default behaviour.
    useDHCP = false;
    interfaces.enp0s31f6.useDHCP = true;
    interfaces.wlp3s0.useDHCP = true;

    # Open ports in the firewall.
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    firewall.enable = false;
  };

  services.tailscale = {
    enable = true;
    
    # This advertise the device as exit node
    useRoutingFeatures = "server";
  };

  #services.v2ray = {
  #  enable = true;
  #  configFile = "/home/jacky/v2ray-config/v2ray.json";
  #};
}

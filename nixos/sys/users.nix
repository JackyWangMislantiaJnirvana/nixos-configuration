{ config, pkgs, ... }:

{
  # Define a user account.
  users.users.jacky = {
    isNormalUser = true;
    extraGroups = [
      "wheel"          # Enables 'sudo' for the user.
      "networkmanager" # Enables user to access the networkmanager
    ];
  };
}

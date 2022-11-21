{ config, pkgs, ... }:

{
  # Define a user account.
  users.users.jacky = {
    isNormalUser = true;
    extraGroups = [
      "wheel" # Enables 'sudo' for the user.
      "dialout" # Enables CHIRP to connect to UV5R radio via USB port
      "networkmanager" # Enables user to access the networkmanager
    ];
  };
}

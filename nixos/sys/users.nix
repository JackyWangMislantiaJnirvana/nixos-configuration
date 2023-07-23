{ config, pkgs, ... }:

{
  # Define a user account.
  users.users.jacky = {
    isNormalUser = true;
    extraGroups = [
      "wheel" # Enables 'sudo' for the user.
      "dialout" # Enables CHIRP to connect to UV5R radio via USB port
      "networkmanager" # Enables user to access the networkmanager
      "docker" # Enables docker socket access
    ];
    openssh.authorizedKeys.keys = [
      ''ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCV0I9U8RHsMg9uuU94LUZT8izCqdR6gnjWPbSTXwOEk6qGj8q/ukt1vcEHKbaNkC9lKpYFmY7wbS8/xkP1JW3pbwaJitIvgL8EsuVY8Cx2Oa571bk285BxDSwutSLOBobqgKnDCXkG1lRZj3fU+JuKuVirdZiz3iUwIUX7OK06AdXElL7zAH3D9dFUYytphAnBBRITzvD+GGdR4qBdvp+6/xuXBeHCW+1AWzvHF2TTC+PCDAMLAg9eBniDqWyO/F2pBcg761nv3aExHW1YmbTydqYYjHzg3PkfIF8EzjrksD3SEXqvS2FE+ZiwK/UXZo8quuStoAJiCykDRhr80Mo1 wmjwld@live.cn''
    ];
  };
}

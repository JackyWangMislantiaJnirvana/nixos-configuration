{ config, pkgs, ... }:

{
  programs.zsh.enable = true;
  users.users.jacky.shell = pkgs.zsh;
}

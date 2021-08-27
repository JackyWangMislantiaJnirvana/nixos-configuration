{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.username = "jacky";
  home.homeDirectory = "/home/jacky";

  # Packages
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    alacritty
    bat
    gh
    neofetch
    neovim
    okular
    tldr
    typora
    vscode
    zoom
    zsh
  ];

  programs.git = {
    enable = true;
    userName = "Jacky Wang";
    userEmail = "wmjwld@live.cn";
  };

  home.stateVersion = "21.11";
}

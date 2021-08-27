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
  ];

  programs.git = {
    enable = true;
    userName = "Jacky Wang";
    userEmail = "wmjwld@live.cn";
    iniContent = {
      core.editor = "nvim";
    };
  };

  programs.zsh = {
    enable = true;

    # shellAliases = {
    #  
    # };
    
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
	"z"
	"man"
      ];
    };

    enableSyntaxHighlighting = true;
    enableAutosuggestions = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      # add_newline = false;

      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };

      # package.disabled = true;
    };
  };

  home.stateVersion = "21.11";
}

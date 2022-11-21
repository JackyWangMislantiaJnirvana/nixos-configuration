{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.username = "jacky";
  home.homeDirectory = "/home/jacky";

  imports = [
    # ./programs/xmonad/default.nix
    ./programs/rofi/default.nix
    ./programs/emacs/default.nix
  ];
  
  # Packages
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    bat
    gh
    neofetch
    neovim
    okular
    tldr
    rnix-lsp
    tdesktop
  ];

  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.8;
    };
  };

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

    shellAliases = {
      tmacs = "emacsclient -nw";
    };

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

  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      vscodevim.vim
    ];
  };

  home.stateVersion = "21.11";
}

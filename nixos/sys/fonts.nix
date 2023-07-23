{ config, pkgs, ... }:

{
  fonts = {
    fonts = with pkgs; [
      (
        nerdfonts.override {
          fonts = [
            "JetBrainsMono"
            "Ubuntu"
            "Iosevka"
          ];
        }
      )
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
    ];
    fontconfig = {
      defaultFonts = {
        monospace = [
          "JetBrainsMono Nerd Font"
          "Noto Sans Mono CJK SC"
        ];
        sansSerif = [
          "Noto Sans CJK SC"
        ];
        serif = [
          "Noto Serif CJK SC"
        ];
      };
    };
  };
}

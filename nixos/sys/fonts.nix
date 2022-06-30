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
      noto-fonts-cjk-sans
    ];
  };
}

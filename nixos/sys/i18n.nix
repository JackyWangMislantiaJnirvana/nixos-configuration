{ config, pkgs, ... }:

{
  i18n = {
    defaultLocale = "en_US.UTF-8";
    inputMethod = {
      #enabled = "ibus";
      #ibus.engines = with pkgs.ibus-engines; [
      #  libpinyin
      #  rime
      #];
       enabled = "fcitx5";
       fcitx5.addons = with pkgs; [
         fcitx5-rime
         fcitx5-chinese-addons
       ];
     };
  };

  time.timeZone = "America/Chicago";
}

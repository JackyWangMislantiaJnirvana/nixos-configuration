import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

main :: IO ()
main = xmonad $ def {
  terminal = "alacritty"
} `additionalKeysP`
      [
        ("M4-p", spawn "rofi -modi drun,ssh,window -show drun -show-icons"),
        ("M4-S-5", spawn "flameshot gui --path ~/Pictures/Screenshots"),
        ("M4-S-4", spawn "flameshot full --path ~/Pictures/Screenshots"),

        -- Volume control
        ("<F2>", spawn "pactl set-sink-volume 0 -10%"),
        ("<F3>", spawn "pactl set-sink-volume 0 +10%"),

        -- Monitor settings
        ("<F7>", spawn "xrandr --output eDP-1 --primary --mode 1920x1080 --dpi 157 --output HDMI-1 --off --output HDMI-2 --off"), -- built-in monitor only
        ("<F8>", spawn "xrandr --output HDMI-2 --primary --mode 3840x2160 --dpi 163 --output HDMI-1 --off --output eDP-1 --off")  -- external AOC 4K monitor only
      ]

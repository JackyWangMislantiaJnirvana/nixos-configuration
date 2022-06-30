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
        ("M4-S-4", spawn "flameshot full --path ~/Pictures/Screenshots")
      ]

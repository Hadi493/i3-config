#!/usr/bin/env bash

# Dracula theme colors
BACKGROUND="282a36"
SELECTION="44475a"
FOREGROUND="f8f8f2"
COMMENT="6272a4"
CYAN="8be9fd"
GREEN="50fa7b"
ORANGE="ffb86c"
PINK="ff79c6"
PURPLE="bd93f9"
RED="ff5555"
YELLOW="f1fa8c"

# i3lock-color command
i3lock \
    --insidever-color=$BACKGROUND'ff' \
    --ringver-color=$PURPLE'ff' \
    \
    --insidewrong-color=$BACKGROUND'ff' \
    --ringwrong-color=$RED'ff' \
    \
    --inside-color=$BACKGROUND'ff' \
    --ring-color=$SELECTION'ff' \
    --line-color=$BACKGROUND'00' \
    --separator-color=$SELECTION'ff' \
    \
    --verif-color=$FOREGROUND'ff' \
    --wrong-color=$RED'ff' \
    --layout-color=$FOREGROUND'ff' \
    \
    --keyhl-color=$GREEN'ff' \
    --bshl-color=$RED'ff' \
    \
    --screen=1 \
    --blur=10 \
    --clock \
    --indicator \
    --time-str="%I:%M:%S%p" \
    --date-str="%A, %d %B" \
    --time-color=$FOREGROUND'ff' \
    --date-color=$FOREGROUND'ff' \
    --keylayout 1 \
    --radius=190 \
    --ring-width=12 \
    --time-font="IosevkaTerm Nerd Font" \
    --date-font="Iosevka Nerd Font" \
    --layout-font="Iosevka Nerd Font" \
    --verif-font="Iosevka Nerd Font" \
    --wrong-font="Iosevka Nerd Font" \
    --greeter-font="Iosevka Nerd Font" \
    --time-size=55 \
    --date-size=24 \
    --layout-size=24 \
    --verif-size=24 \
    --wrong-size=24 \
    --greeter-size=24 \
    "$@"

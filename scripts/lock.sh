#!/usr/bin/env bash

# Catppuccin Mocha Colors
base="1e1e2e"
mantle="181825"
crust="11111b"
text="cdd6f4"
subtext0="a6adc8"
subtext1="bac2de"
surface0="313244"
surface1="45475a"
surface2="585b70"
overlay0="6c7086"
overlay1="7f849c"
overlay2="9399b2"
blue="89b4fa"
lavender="b4befe"
sapphire="74c7ec"
sky="89dceb"
teal="94e2d5"
green="a6e3a1"
yellow="f9e2af"
peach="fab387"
maroon="eba0ac"
red="f38ba8"
mauve="cba6f7"
pink="f5c2e7"
flamingo="f2cdcd"
rosewater="f5e0dc"

# Common flags for both i3lock and i3lock-color
args=("$@")

# Check if i3lock-color is installed
if i3lock --help 2>&1 | grep -q "ring-color"; then
    # i3lock-color configuration
    i3lock \
        --insidever-color=$base \
        --ringver-color=$lavender \
        \
        --insidewrong-color=$base \
        --ringwrong-color=$red \
        \
        --inside-color=$base \
        --ring-color=$lavender \
        --line-color=$base \
        --separator-color=$surface0 \
        \
        --verif-color=$text \
        --wrong-color=$text \
        --time-color=$text \
        --date-color=$text \
        --layout-color=$text \
        --keyhl-color=$mauve \
        --bshl-color=$red \
        \
        --screen 1 \
        --blur 7 \
        --clock \
        --indicator \
        --time-str="%H:%M:%S" \
        --date-str="%A, %d %B" \
        --keylayout 1 \
        "${args[@]}"
else
    # Fallback to standard i3lock with a solid color
    i3lock -c $base "${args[@]}"
fi

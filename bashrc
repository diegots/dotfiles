# Shared preferences

## Editor selection
export VISUAL=vim
export EDITOR="$VISUAL"
export SVN_EDITOR=/usr/bin/vim

## Colorful manpages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# LS_COLORS
export LS_COLORS="$(cat $path/$to/ls_colors_file.txt)"

# JQ tool colors
export JQ_COLORS="1;31:1;39:1;39:7;39:1;32:1;35:1;39"

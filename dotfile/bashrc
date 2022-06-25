# SVN message editor
SVN_EDITOR=/usr/bin/vim

# Java JDK
# export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64 # default openjdk
export JAVA_HOME=/opt/oracle-jdk
# Add java binaries to path
PATH=$JAVA_HOME/bin:$PATH

# Add git status to PS1 variable with:
# \[\033[33m\]$(parse_git_branch)\[\033[00m\] \

# Gets the current git branch if there is one
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

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


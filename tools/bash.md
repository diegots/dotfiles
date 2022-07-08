# Bash shell
- **Snippet**: proper shebang.
  - ```#!/usr/bin/env bash```.
- **Task**: create a ```for``` loop in one line.
  - ```for i in {1..5}; do COMMAND-HERE; done```.
- **Task**: change one color in the PS1 definition. 
  - ```COLOR``` bit in ```\[\033[COLOR]m\]``` located in ```.bashrc``` file.
- **Task**: tell bash that arithmetic argument is base-10
  - ```echo $((10#09+1))``` instead of ```echo $((09+1))```.
- **Task**: display calendar with week days and starting on Mondays.
  - ```ncal -M -y -b -w```.
- **Task**: test if file exists
  - ```[ -f file.txt ] && ls file.txt```.


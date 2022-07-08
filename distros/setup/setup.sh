#!/usr/bin/env bash

# Crate base directories
base_dirs="1.repo 2.sync 3.loc 4.bin"
for i in $base_dirs; do mkdir -v ~/$i; done

# Add git identification
git config --global user.name "Diego Trabazo Sardón"
git config --global user.email "dtrabazo@gmail.com"
git config --global core.editor 'vim'

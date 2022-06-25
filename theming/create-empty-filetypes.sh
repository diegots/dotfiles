#!/usr/bin/env bash

# This script creates empty files, links and directories with the purpose of been able to visualize their colours in the terminal

## Multimedia
touch 001.mp3
touch 002.mp4
touch 003.avi
touch 004.wav

## Documents
touch 011.pdf
touch 012.txt

## Image
touch 021.jpg
touch 022.png

## Operating system
touch 031.exe
touch 032.bin && chmod 750 032.bin
ln -s 001.mp3 033.lnk
ln -s 000 034-broken.lnk 
mkdir 035.dir
ln -s 035.dir 036-dir.lnk 
ln -s /mnt 037-absolute-path.lnk 
touch 038.file && chmod 777 038.file
mkdir 039.dir && chmod 777 039.dir

## Programming
touch 041.xml
touch 042.sh
touch 043.html
touch 044.c
touch 045.java

echo 'Done'

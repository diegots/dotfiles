#!/usr/bin/env bash

# Instructions from 
# http://ytdl-org.github.io/youtube-dl/download.html

dest_dir="$HOME/4.bin"

curl -# -L https://yt-dl.org/downloads/latest/youtube-dl -o $dest_dir/youtube-dl
chmod -v a+rx $dest_dir/youtube-dl

# Usage
# Start by listing all available contents from a resource
# ./youtube-dl -F <url>

# Then download the desired one:
# ./youtube-dl -v -f <code_number> <url>

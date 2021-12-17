#!/usr/bin/env bash

# Instructions from 
# http://ytdl-org.github.io/youtube-dl/download.html

dest_dir="$HOME/4.bin"

url=https://yt-dl.org/downloads/latest/
app=youtube-dl
curl -# -L $url/$app -o $dest_dir/$app
chmod -v a+rx $dest_dir/$app

url=https://github.com/yt-dlp/yt-dlp/releases/latest/download/
app=yt-dlp
curl -# -L $url/$app -o $dest_dir/$app
chmod -v a+rx $dest_dir/$app

# Usage
# Start by listing all available contents from a resource
# ./youtube-dl -F <url>

# Then download the desired one:
# ./youtube-dl -v -f <code_number> <url>

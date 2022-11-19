# Other packages install

## Google Chrome
Download from https://www.google.com/chrome/

## KeeWeb 
Download latest version from Github repository: https://github.com/keeweb/keeweb/releases/

## Syncthing (from https://apt.syncthing.net/)
1. sudo curl -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
2. echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
3. sudo apt-get update
4. sudo apt-get -y install syncthing syncthing-gtk

## Visual Studio Code
Follow instructions from https://code.visualstudio.com/docs/setup/linux

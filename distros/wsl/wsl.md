## WSL

### Fix default permissions

- <https://www.turek.dev/post/fix-wsl-file-permissions/>
- <https://devblogs.microsoft.com/commandline/chmod-chown-wsl-improvements/>

For viewing ```/mnt/``` files and folders with sane defaults, edit ```/etc/wsl.conf``` adding

```
[automount]
enabled = true
options = "metadata,umask=22,fmask=11"
```
The for fixing the creation of files and folders, add to ```.profile```:

```
if [[ "$(umask)" = "0000" ]]; then
          umask 0022
fi
```

### Rebooting WSL
- First install `wsl` utility: `sudo apt-get install ubuntu-wsl`
- Then list installed distros: `wsl.exe --list`
- Use `terminate` flag for shutdown the envirinment: `wsl.exe --terminate <distro-name>`

#wsl
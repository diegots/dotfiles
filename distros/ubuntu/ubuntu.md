## Ubuntu 18.04

### Java
- Change between Java versions: ```sudo update-alternatives --config java```
- Just list the Java path: ```update-alternatives --list java```

### Packages
- Avoid a package from updating: `echo "PACKAGE hold" | sudo dpkg --set-selections`
- Show holded packages: `dpkg --get-selections | grep hold`

#ubuntu
# Frequently needed but always forgotten commands, snippets and shortcuts

## Atom editor
- Manually set syntax highlighting: ```Ctrl-Shift-L```.
- Go to line: ```Ctrl+G```.
- Select multiple locations using multiple cursors: ```ctrl-leftclick```.

## Bash shell
- Shebang: ```#!/usr/bin/env bash```.
- One line for: ```for i in {1..5}; do COMMAND-HERE; done```.

## Git
- Unstage *all* files, ```git reset```.
- Create a tag git message: ```git tag -a v1.4 -m "my version 1.4"```.
- Sharing tags: ```git push origin v1.4```.
- List files under version control: ```git ls-files```.
- List 99 tags with its tag message: ```git tag -n99```.

## IntelliJ IDE
- Go to line: ```Ctrl+G```.

## Java language

### Ternary operator
Syntax: ```booleanExpression ? expression1 : expression2```.
Example:
```Java
final String msg = num > 10
  ? "Number is greater than 10"
  : "Number is less than or equal to 10";
```  

## Ubuntu 18.04

### Java
- Change between Java versions: ```sudo update-alternatives --config java```
- Just list the Java path: ```update-alternatives --list java```

## SSH
- Generating a new key pair: ```ssh-keygen -t rsa -b 4096 -C 'user@host.com'```

## Vim editor

### Using spell check
First select the language to be checked for with ```set spelllang=en``` and then, activate spell checking: ```setlocal spell```
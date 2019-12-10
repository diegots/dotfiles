# Frequently needed but always forgotten commands, snippets and shortcuts

## Atom editor
- Manually set syntax highlighting: ```Ctrl-Shift-L```.
- Markdown preview : ```Ctrl-Shift-M```.
- Go to line: ```Ctrl+G```.
- Select multiple locations using multiple cursors: ```Ctrl-LeftClick```.

## Bash shell
- Shebang: ```#!/usr/bin/env bash```.
- One line for: ```for i in {1..5}; do COMMAND-HERE; done```.
- Tell bash that arithmetic argument is base-10: ```echo $((10#09+1))``` instead of ```echo $((09+1))```.
- Display calendar with week days and starting on Mondays: ```ncal -M -y -b -w```

## ffmpeg
- Extract audio from video file w/o conversion: ```ffmpeg -i a.m4a -vn -acodec copy b.aac```

## Git
- Unstage *all* files, ```git reset```.
- Create a tag git message: ```git tag -a v1.4 -m "my version 1.4"```.
- Sharing tags: ```git push origin v1.4```.
- List files under version control: ```git ls-files```.
- List 99 tags with its tag message: ```git tag -n99```.
- Load ssh agent and add one key: ```eval $(ssh-agent -s)```, then: ```ssh-add ~/.ssh/id_rsa```.
- [Find the most recent common ancestor of two branches](https://stackoverflow.com/questions/1549146/git-find-the-most-recent-common-ancestor-of-two-branches): ```git merge-base branch2 branch3```.

## IntelliJ IDE
- Go to line: ```Ctrl+G```.
- [How to manage projects under Version Control Systems](https://intellij-support.jetbrains.com/hc/en-us/articles/206544839-How-to-manage-projects-under-Version-Control-Systems)

## Java language

### Ternary operator
Syntax: ```booleanExpression ? expression1 : expression2```.
Example:
```Java
final String msg = num > 10
  ? "Number is greater than 10"
  : "Number is less than or equal to 10";
```  
## Python 3 language
- Start minimal web server: ```python3 -m http.server```. This is useful for testing a small idea cause Chrome and Firefox don't allow loading local files.

### Basic data types

```
>>> type(123)
<class 'int'>
>>> type(55.20)
<class 'float'>
>>> type(4+9j)
<class 'complex'>
>>> type('hello world!')
<class 'str'>
>>> type([1, 2, 3, 4])
<class 'list'>
>>> type((1, 2, 3, 4))
<class 'tuple'>
>>> type({'a': 1, 'b': 2})
<class 'dict'>
```

|   Inmutable   | Mutable |     |
|---------------|---------|-----|
| number values | list    |     |
| string        | dict    |     |
| tuple         |         |     |

### Indexing lists, tuples, dictionaries

```
>>> e=[1, 2, 3, 4] # list
>>> f=(1, 2, 3, 4) # tuple
>>> g={'a': 1, 'b': 2} # dict
>>> e[0] # list first element
1
>>> f[0] # tuple first element
1
>>> g['a'] # dict first element
1
```

## Ubuntu 18.04

### Java
- Change between Java versions: ```sudo update-alternatives --config java```
- Just list the Java path: ```update-alternatives --list java```

## SSH
- Generating a [new key pair](https://help.github.com/en/enterprise/2.16/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key): ```ssh-keygen -t rsa -b 4096 -C 'user@host.com'```
- Fix problem ```Too many authentication failures```. Instruct ```ssh``` to use only identities provided by the command line ```-o IdentitiesOnly=yes```.

## Vim editor

### Using spell check
First select the language to be checked for with ```set spelllang=en``` and then, activate spell checking: ```setlocal spell```
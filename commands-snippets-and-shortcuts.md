# Frequently needed but always forgotten commands, snippets and shortcuts

## Ansible

### Create multiple directories with a loop

```
- name: Creating directories
  file:
    path: "{{ item }}"
    state: directory
  with_items:
    - "first-dir"
    - "second-dir"
    - "third dir"
```

## Atom editor
- Manually set syntax highlighting: ```Ctrl-Shift-L```.
- Markdown preview : ```Ctrl-Shift-M```.
- Go to line: ```Ctrl+G```.
- Select multiple locations using multiple cursors: ```Ctrl-LeftClick```.

## Bash shell
- Shebang: ```#!/usr/bin/env bash```.
- One line for: ```for i in {1..5}; do COMMAND-HERE; done```.
- PS1 color: change ```COLOR``` bit in ```\[\033[COLOR]m\]``` located in ```.bashrc``` file.
- Tell bash that arithmetic argument is base-10: ```echo $((10#09+1))``` instead of ```echo $((09+1))```.
- Display calendar with week days and starting on Mondays: ```ncal -M -y -b -w```.
- Test if file exists: ```[ -f file.txt ] && ls file.txt```.

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
>>> type(frozenset([4, 8, 3, 0]))
<class 'frozenset'>
>>> type(set([4, 8, 3, 0]))
<class 'set'>
>>> type({2, 9, 4, 6})
<class 'set'>
>>> type(range(3,8,2))
<class 'range'>
```

| Data type | Mutability |   Order   |          Contructor          |   Indexing    |
|-----------|------------|-----------|------------------------------|---------------|
| string    | inmutable  |           |                              |               |
| numbers   | inmutable  |           |                              |               |
| frozenset | inmutable  | unordered | frozenset(['a', 'b'])        | No: 'a' in fs |
| set       | mutable    | unordered | {'a', 'b'} / set(['a', 'b']) | No: 'a' in s  |
| list      | mutable    |           | ['a', 'b']                   | l[0]          |
| dict      | mutable    |           | {'a': 4, 'b': 5}             | d['a']        |
| tuple     | inmutable  |           | ('a', 'b')                   | t[0]          |
| range     | inmutable  |           | range(1,9,2) / range(5)      | r[0]          |

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

## Screencast with Kazam

Kazam h264 output it's not directly visible within Whatsapp. In order to fix this problem, ffmepg can be used to transcode the file:

```
ffmpeg -i $input_file -c:V libx264 -strict experimental -tune fastdecode \
    -pix_fmt yuv420p $output_file
```

## Ubuntu 18.04

### Java
- Change between Java versions: ```sudo update-alternatives --config java```
- Just list the Java path: ```update-alternatives --list java```

## Scanning
This tip is for manually scan a heap of documents and then making one PDF with them:

1. ```scanimage --mode Gray -p --format=tiff --resolution 150 -x 210 -y 297 > 3.tiff```
2. ```tiffcp {1..88}.tiff salida.tiff```
3. ```tiff2pdf -q 100 -j -o final.pdf -p A4 salida.tiff```

## SSH
- Generating a [new key pair](https://help.github.com/en/enterprise/2.16/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key): ```ssh-keygen -t rsa -b 4096 -C 'user@host.com'```
- Fix problem ```Too many authentication failures```. Instruct ```ssh``` to use only identities provided by the command line ```-o IdentitiesOnly=yes```.

## Subversion
- Set ignore property: ```svn propset svn:ignore "ignore-this.txt" <dir-name>```
- Edit ignore property: ```svn propedit svn:ignore <dir-name>```. This opens an editor where filenames can be added or removed, one per line.
- Commit only propedit changes: ```svn commit --depth empty .```

## Vim editor

### Using spell check
First select the language to be checked for with ```set spelllang=en``` and then, activate spell checking: ```setlocal spell```

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

Reboot a WSL system:
1. Install ```wsl``` tool: ```apt-get install wsl```
2. Using PowerShell: ```wsl -t 'distroName'```
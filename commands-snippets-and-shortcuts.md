# Frequently needed but always forgotten commands, snippets and shortcuts

## Atom editor
- Manually set syntax highlighting: ```Ctrl-Shift-L```

## Git
- Unstage *all* files, ```git reset```
- Create a tag git message: ```git tag -a v1.4 -m "my version 1.4"```
- Sharing tags: ```git push origin v1.4```

## Java language

### Ternary operator
Syntax: ```booleanExpression ? expression1 : expression2```
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

## Vim editor

### Using spell check
First select the language to be checked for with ```set spelllang=en``` and then, activate spell checking: ```setlocal spell```
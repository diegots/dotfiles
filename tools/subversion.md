## Subversion
- Set ignore property: ```svn propset svn:ignore "ignore-this.txt" <dir-name>```
- Edit ignore property: ```svn propedit svn:ignore <dir-name>```. This opens an editor where filenames can be added or removed, one per line.
- Commit only propedit changes: ```svn commit --depth empty .```

#subversion
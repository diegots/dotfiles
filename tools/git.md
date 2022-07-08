## Git
- Unstage *all* files, ```git reset```.
- Create a tag git message: ```git tag -a v1.4 -m "my version 1.4"```.
- Sharing tags: ```git push origin v1.4```.
- List files under version control: ```git ls-files```.
- List 99 tags with its tag message: ```git tag -n99```.
- Load ssh agent and add one key: ```eval $(ssh-agent -s)```, then: ```ssh-add ~/.ssh/id_rsa```.
- [Find the most recent common ancestor of two branches](https://stackoverflow.com/questions/1549146/git-find-the-most-recent-common-ancestor-of-two-branches): ```git merge-base branch2 branch3```.
- Delete branch: `git branch -d <banch-name>`.
- Delete branch (forced): `git branch -D <banch-name>`.
- Create branch and switch to it: `git checkout -b <branch-name> `
- Find out when a file was added: `git log --diff-filter=A -- <file>`
- View all changes to a file: `git log -- <file>`
- Same but with patches and file renames: `git log --follow -p -- <file>`
- Same but using gitk: `gitk --follow <file>`

### Migrating git repositories
https://stackoverflow.com/questions/1425892/how-do-you-merge-two-git-repositories

cd path/to/project-b
git remote add project-a /path/to/project-a
git fetch project-a --tags
git merge --allow-unrelated-histories project-a/master # or whichever branch you want to merge
git remote remove project-a
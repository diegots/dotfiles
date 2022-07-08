# SSH
- **Task**: generate a [new ssh key pair](https://help.github.com/en/enterprise/2.16/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key). 
  - ```ssh-keygen -t rsa -b 4096 -C 'user@host.com'```
- **Task**: ```Too many authentication failures```.
  - Instruct ```ssh``` to use only identities provided by the command line ```-o IdentitiesOnly=yes```.
- **Task**: load a SSH key so it can be used.
  - ```eval $(ssh-agent -s) && ssh-add $HOME/.ssh/$key_file```


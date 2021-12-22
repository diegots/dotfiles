# SVN message editor
SVN_EDITOR=/usr/bin/vim

# Java JDK
# export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64 # default openjdk
export JAVA_HOME=/opt/oracle-jdk
# Add java binaries to path
PATH=$JAVA_HOME/bin:$PATH

# Add git status to PS1 variable with:
# \[\033[33m\]$(parse_git_branch)\[\033[00m\] \

# Gets the current git branch if there is one
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f ~/.bashrc ]; then
    . ~/.bashrc
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

#parse_git_branch() {
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Not part of Adam R's setup, but an alternative of managing the
# use git-completion.bash as installed with brew. 
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
#    # if not found in /usr/local/etc, try the brew --prefix location
#    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
#        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
#}

# setup of interactive zsh terminals


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias mj6='mob next'
alias ms30='mob start 30'



# add zsh git autocompletion with compinit
autoload -Uz compinit && compinit

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}
zstyle ':vcs_info:git*' actionformats "%r/%S %b %m%u%c "
setopt prompt_subst
PROMPT='${vcs_info_msg_0_}%# '

. ~/.zshrc.mine

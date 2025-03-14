# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# I use powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode disabled  # disable automatic updates

plugins=(git fzf docker)

# oh my zsh setup
source $ZSH/oh-my-zsh.sh

# manually set your language environment
export LANG=en_US.UTF-8

# aliases
alias tmux="tmux -u"
alias vim="nvim"
alias vimdiff='nvim -d'
alias zshconfig="nvim ~/.zshrc"
alias mv='mv -i'
alias cls='clear -x'

export EDITOR="vim"

# volta.sh 
export VOLTA_HOME="$HOME/.volta"

# golang
export GO_INSTALL="/usr/local/go/bin"

path=($GO_INSTALL\
    $VOLTA_HOME\
    $path)

export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/exclowd/Library/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/exclowd/Library/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/exclowd/Library/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/exclowd/Library/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zoxide
eval "$(zoxide init zsh)"

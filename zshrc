# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# I use a custom theme
ZSH_THEME="simple"

zstyle ':omz:update' mode disabled  # disable automatic updates

plugins=(git fzf docker)

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
alias open='xdg-open'

# volta.sh 
export VOLTA_HOME="$HOME/.volta"
# cuda
export CUDA='/usr/local/cuda-12.2'
# nvim
export NVIM='/opt/nvim-linux64'

path=("$CUDA/bin"\
    "$CUDA/lib64"\
    "$NVIM/bin"\
    "/usr/local/go/bin"\
    $VOLTA_HOME\
    $path)

export PATH
export MANPATH="$NVIM/man:$MANPATH"
export EDITOR=nvim

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

# expand zoxide to make load faster
_z_cd() {
    cd "$@" || return "$?"

    if [ "$_ZO_ECHO" = "1" ]; then
        echo "$PWD"
    fi
}

z() {
    if [ "$#" -eq 0 ]; then
        _z_cd ~
    elif [ "$#" -eq 1 ] && [ "$1" = '-' ]; then
        if [ -n "$OLDPWD" ]; then
            _z_cd "$OLDPWD"
        else
            echo 'zoxide: $OLDPWD is not set'
            return 1
        fi
    else
        _zoxide_result="$(zoxide query -- "$@")" && _z_cd "$_zoxide_result"
    fi
}

zi() {
    _zoxide_result="$(zoxide query -i -- "$@")" && _z_cd "$_zoxide_result"
}


alias za='zoxide add'

alias zq='zoxide query'
alias zqi='zoxide query -i'

alias zr='zoxide remove'
zri() {
    _zoxide_result="$(zoxide query -i -- "$@")" && zoxide remove "$_zoxide_result"
}


_zoxide_hook() {
    zoxide add "$(pwd -L)"
}

chpwd_functions=(${chpwd_functions[@]} "_zoxide_hook")


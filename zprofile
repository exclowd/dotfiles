# Added by Toolbox App
export PATH="$PATH:/Users/kannavkm/Library/Application Support/JetBrains/Toolbox/scripts"

ts() {
    selected=$(find -L ~/palantir -maxdepth 1 -type d -not -path '*/.*' | fzf)

    if [[ -z $selected ]]; then
        return 0
    fi

    selected_name=$(basename "$selected" | tr . _)
    tmux_running=$(pgrep tmux)

    # if not in tmux and not tmux running then create a new session
    if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
        tmux new-session -s $selected_name -c $selected
        return 0
    fi
    
    # tmux doesn't have this session
    if ! tmux has-session -t=$selected_name 2> /dev/null; then
        tmux new-session -ds $selected_name -c $selected
    fi
    
    tmux switch-client -t $selected_name
}


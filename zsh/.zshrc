# Aliases
alias cls=clear
alias vi=nvim
alias vim=nvim

# Start tmux
if command -v tmux && [[ -z "$TMUX" ]]; then
    tmux attach || tmux
fi

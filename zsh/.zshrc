# Aliases
alias cls=clear
alias vi=nvim
alias vim=nvim

# Start tmux
if command -v tmux >/dev/null && [[ -z "$TMUX" ]]; then
    tmux attach >/dev/null || tmux >/dev/null
fi

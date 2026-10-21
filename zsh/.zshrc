# Machine-local secrets/overrides (not tracked in source control)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Aliases
alias cls=clear
alias vi=nvim
alias vim=nvim

# Start tmux
if command -v tmux >/dev/null && [[ -z "$TMUX" ]]; then
    tmux attach >/dev/null || tmux >/dev/null
fi

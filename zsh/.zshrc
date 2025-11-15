# Start Oh My Posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ];
then
    eval "$(oh-my-posh init zsh --config $HOME/.config/posh/theme.omp.json)"
fi

# Start Tmux
if [ -x "$(command -v tmux)" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi

# Shell settings
autoload -Uz compinit && compinit
setopt AUTO_PUSHD

# Aliases
alias cls=clear
alias vi=nvim

# Path
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/flutter/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andrewolee/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andrewolee/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andrewolee/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andrewolee/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin_mocha.omp.json)"
autoload -Uz compinit && compinit
setopt AUTO_PUSHD

alias cls=clear
alias vi=nvim

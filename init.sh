#!/bin/zsh

function symlink {
    if [ ! -e $1 ]
    then
        echo "Source file does not exists!"
        exit 1
    fi

    if [ -e $2 ]
    then
        echo "A config file at $2 already exists! Overwrite with $1? [y/n]"
        read -q
        echo

        if [ $REPLY = 'n' ]
        then
            return
        fi

        echo "Moving existing config at $2 to trash..."
        echo $2/$(basename $1)
    fi
}

symlink nvim $HOME/.config
symlink zsh/.zshrc $HOME

brew install neovim
brew install ripgrep
brew install jandedobbeleer/oh-my-posh/oh-my-posh

ln -s $PWD/nvim $HOME/.config
ln -s $PWD/zsh/.zshrc $HOME

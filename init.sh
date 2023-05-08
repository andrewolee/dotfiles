#!/bin/zsh

function symlink {
    if [ ! -e $1 ]
    then
        echo "Source file does not exists!"
        exit 1
    fi

    DEST=$2/$(basename $1)

    if [ -e $DEST ]
    then
        echo "Overwrite existing config at $DEST? [y/n]"
        read -q
        echo

        if [ $REPLY = 'n' ]
        then
            return
        fi

        echo "Moving existing config at $DEST to trash..."
        mv $DEST $HOME/.Trash
    fi

    echo "Creating symlink..."
    ln -s $PWD/$1 $DEST
}

function brewinstall {
    echo "Checking if $1 is installed..."
    if brew list $1 &> /dev/null
    then
        echo "$1 is already installed."
    else
        echo "$1 not found. Installing..."
        brew install $1
    fi
}

if ! which brew &> /dev/null
then
    echo "Install Homebrew!"
    exit 1
fi

symlink nvim $HOME/.config
symlink zsh/.zshrc $HOME

brewinstall neovim
brewinstall ripgrep
brewinstall jandedobbeleer/oh-my-posh/oh-my-posh

#!/bin/zsh

function symlink {
    if [ ! -e $1 ]
    then
        echo "Source file does not exists!"
        exit 1
    fi

    src=$PWD/$1
    target=$2/$(basename $1)

    if [ -e $target ]
    then
        if [ $(realpath $target) = $src ]
        then
            echo "Symlink already exists!"
            return
        fi

        echo "Overwrite existing config at $target? [y/n]"
        read -q
        echo

        if [ $REPLY = 'n' ]
        then
            return
        fi

        echo "Moving existing config at $target to trash..."
        mv $target $HOME/.Trash
    fi

    echo "Creating symlink..."
    ln -s $src $target
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

echo "Updating Homebrew packages..."
brew update

symlink nvim $HOME/.config
symlink zsh/.zshrc $HOME

brewinstall neovim
brewinstall ripgrep
brewinstall jandedobbeleer/oh-my-posh/oh-my-posh
brewinstall node

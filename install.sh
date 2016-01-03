#!/bin/sh
#git clone git@github.com:laiwei/unix_home.git ~/.laiwei_unix_home


install_file()
{
    src=`pwd`"/"$1
    des="$HOME/$1"
    echo "
    src $src
    des $des"
    if [ -f $des -o -d $des ]; then
        mv -f $des $des".backup"
    fi
    ln -s $src $des
}

install_file .screenrc
install_file .vimrc
install_file .vim
install_file .bashrc

if [ -d "$GOROOT" ]; then
    mkdir -p $HOME/.vim/ftdetect
    mkdir -p $HOME/.vim/syntax
    mkdir -p $HOME/.vim/autoload/go
    ln -s $GOROOT/misc/vim/ftdetect/gofiletype.vim $HOME/.vim/ftdetect/
    ln -s $GOROOT/misc/vim/syntax/go.vim $HOME/.vim/syntax
    ln -s $GOROOT/misc/vim/autoload/go/complete.vim $HOME/.vim/autoload/go
    echo "syntax on" >> $HOME/.vimrc
fi

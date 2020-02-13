#!/bin/sh
cd ~/.dotfiles || exit
ln -fns ~/.dotfiles/vimconf/.vimrc ~/.vimrc
echo "[.vimrc] Linked."
for item in .*; do
    if [ "$item" != "." ] && [ "$item" != ".." ] && [ "$item" != ".git" ] && [ "$item" != ".gitmodules" ]; then
	ln -ns ~/.dotfiles/$item ~/$item &> /dev/null
        LINKED=$?

        if [ $LINKED -eq 0 ]; then
             echo "[$item] Linked."
        else
            echo "[$item] Exists."
        fi
    fi
done

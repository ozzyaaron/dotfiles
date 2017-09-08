#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
  source ~/.bash_profile;

  # Install vim-plug if it isn't already installed
  if [ -e "$HOME"/.vim/autoload/plug.vim ]; then
    echo "Updating Vim Plugins with vim-plug";
    vim -E -s +PlugUpgrade +qa
  else
    echo "Installing vim-plug";
    curl -fLo "$HOME"/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;

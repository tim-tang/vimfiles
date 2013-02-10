ln -sf $PWD/vimrc ~/.vimrc
ln -sf $PWD/gvimrc ~/.gvimrc
[[ ! -e '~/.vimundodir' ]] || mkdir ~/.vimundodir
[[ ! -e '~/.vim-fuf-data' ]] || mkdir ~/.vim-fuf-data
git submodule update --init

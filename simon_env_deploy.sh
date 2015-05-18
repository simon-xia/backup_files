# simon xia's linux workspace deploy 
# vim
mv ~/.vim ~/.vim_backup
mv ~/.vimrc ~/.vimrc_backup
cp $(pwd)/.vimrc ~/.vimrc
cp -R $(pwd)/.vim ~/.vim
cp $(pwd)/.vim/colorscheme/* /usr/share/vim/vim74/colors/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# oh my zsh
sudo apt-get install zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
cp $(pwd)/.zshrc ~/.zshrc

# replace mawk with gawk
sudo apt-get install  gawk

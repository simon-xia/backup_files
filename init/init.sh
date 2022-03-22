
########################
### zsh
########################

# install Xcode command line tools
xcode-select --install

# install zsh
sh -c ./install_zsh.sh


########################
### homebrew
########################

# use tsinghua source
echo 'export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"' >> ~/.zshrc
echo 'export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"' >> ~/.zshrc
echo 'export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"' >> ~/.zshrc

# install homebrew
git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
/bin/bash brew-install/install.sh
rm -rf brew-install

# install cask
brew tap caskroom/cask

brew cask install iterm2

brew install aria2
brew install ccat
brew install cmake
brew install doctoc
# command history search
brew install fzf
brew install htop
brew install git
brew install ncdu
brew install pandoc
brew install tmux
brew install tree
brew install vim
brew install wget
brew install zcat

# git init
git config --global user.name "simonxia"
git config --global user.email "simonxiaOMG@gmail.com"
git config --global core.excludesFile '~/.gitignore'



########################
### java
########################

brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk8
brew install maven@3.5 


brew install protobuf@3.6


########################
### Mac OS config
########################

# show hiden files in Finder
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder

# Consecutive Input 
defaults write -g applepressandholdenabled -bool false





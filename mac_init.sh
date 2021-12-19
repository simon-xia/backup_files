
# install Xcode command line tools
xcode-select --install

# install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
chsh -s $(which zsh)
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install cask
brew tap caskroom/cask

brew cask install iterm2

# java 
brew tap adoptopenjdk/openjdk
brew install --cask  adoptopenjdk8
brew install maven
# TODO: set JAVA_HOME in .zshrc

# go
brew install go

# mac window manager
brew install --cask slate

# sort by alphabet

#brew install --cask alfred
# install alfred from: 

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

# show hiden files in Finder
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder

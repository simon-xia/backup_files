
# install Xcode command line tools
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# install cask
brew tap caskroom/cask

brew cask install google-chrome iterm2

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc



# sort by alphabet

brew install aria2
brew install ccat
brew install cmake
brew install doctoc
# command history search
brew install fzf
brew install htop
brew install git
brew install go
brew install pandoc
brew install tmux
brew install tree
brew install vim
brew install wget
brew install zcat


git config --global user.name "simonxia"
git config --global user.email "simonxiaOMG@gmail.com"

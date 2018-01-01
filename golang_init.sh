# one repo
# brew install go, at first

echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export GOROOT=/usr/local/opt/go/libexec' >> ~/.zshrc
echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.zshrc

mkdir -p $GOPATH $GOPATH/src $GOPATH/pkg $GOPATH/bin

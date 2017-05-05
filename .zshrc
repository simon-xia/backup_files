# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/xmind:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#
#

function upto() {
	EXPRESSION="$1"
	if [ -z "$EXPRESSION" ]; then
		echo "A folder expression must be provided." >&2
		return 1
	fi
	CURRENT_FOLDER="$(pwd)"
	MATCHED_DIR=""
	MATCHING=true

	while [ "$MATCHING" = true ]; do
		if [[ "$CURRENT_FOLDER" =~ "$EXPRESSION" ]]; then
			MATCHED_DIR="$CURRENT_FOLDER"
			CURRENT_FOLDER="$(dirname $CURRENT_FOLDER)"
		else
			MATCHING=false
		fi
	done
	if [ -n "$MATCHED_DIR" ]; then
		cd $MATCHED_DIR
	else
		echo "No Match." >&2
		return 1
	fi
	
}

alias cls='clear'
alias ll='ls -alF'
alias vi='vim'
alias grep="grep --color=auto"
alias h="history"
alias rm="rm -i"
alias cat="ccat --bg=dark"
alias gcc99="gcc -std=c99"

#tmux lose vim colorscheme
alias tmux="TERM=screen-256color-bce tmux"
DISABLE_AUTO_TITLE=true

export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"

#my golang env
export GOROOT=/usr/local/Cellar/go/1.8/libexec
export GOBIN=/usr/local/Cellar/go/1.8/bin
export PATH=$PATH:$GOBIN

# switch GOPATH 
golocalize () {
	#gopath=(/home/$USER/Projects/Go/import $(dirname $PWD )) 
	gopath=(/Users/simon/Myfruit/Go/imports $PWD) 
	export GOPATH="${gopath[1]}:${gopath[2]}"
	echo GOPATH is $GOPATH
}

# append GOPATH
appendgopath () {
	#gopath=(/home/$USER/Projects/Go/import $(dirname $PWD )) 
	export GOPATH=$GOPATH:$PWD
	echo GOPATH is $GOPATH
}

export M2_HOME=/usr/local/apache-maven-3.0.5
export PATH=$PATH:$M2_HOME/bin

# mit scheme
export PATH=$PATH:$HOME/tools/mit-scheme:/usr/local/aria2/bin

#mactex, command: pdflatex
export PATH=$PATH:/usr/texbin

export PATH=$PATH:/usr/local/Cellar/mongodb/3.2.4/bin/
export GO15VENDOREXPERIMENT=1

# colorized man page 
man() {
    env \
        LESS_TERMCAP_mb=$'\e[1;31m' \
        LESS_TERMCAP_md=$'\e[1;31m' \
        LESS_TERMCAP_me=$'\e[0m' \
        LESS_TERMCAP_se=$'\e[0m' \
        LESS_TERMCAP_so=$'\e[1;44;33m' \
        LESS_TERMCAP_ue=$'\e[0m' \
        LESS_TERMCAP_us=$'\e[1;32m' \
            man "$@"
}

export PATH=$PATH:/Users/simon/Myfruit/Go/qiniu/kafka/FlameGraph

alias vim="/usr/local/Cellar/vim/8.0.0002/bin/vim"
alias vi="/usr/local/Cellar/vim/8.0.0002/bin/vim"

#java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$JAVA_HOME/bin:$PATH
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home  
#export PATH=$JAVA_HOME/bin:$PATH  
#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar


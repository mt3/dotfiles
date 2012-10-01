# ZSH Variables
###############

export OH_MY_ZSH_DEBUG="true"
# don't put duplicate lines in history
# & don't overwrite Midnight Commander's `ignorespace' setting
# http://github.com/matflores/dotfiles/blob/master/bashrc
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
# HISTCONTROL=ignoreboth
HISTCONTROL=eraseboth
#HISTFILE=~/.history
HISTSIZE=10500
SAVEHIST=10000
#setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt HIST_APPEND
setopt HIST_IGNORE_DUPS
#setopt HIST_IGNORE_ALL_DUPS #i'm bypassing this since it messes with recent history/chronology (doesn't retain recent occurences)
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

# red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# avoid completion when "zsh: correct 'vim' to '.vim' [nyae]? n"
CORRECT_IGNORE=".*"
#CORRECT_IGNORE=".vim"

# M-b and M-f (backward-word and forward-word) doesn't jump over an entire /path/location, but moves to each word separated by a '/'
export WORDCHARS=''
# by default: export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
# we take out the slash, period, angle brackets, dash here.
# export WORDCHARS='*?_[]~=&;!#$%^(){}'

# auto-launch ssh keypairs so i don't have to enter the damned 137.5 character pwd every time
export SSH_ENV="$HOME/.ssh/environment"
export EDITOR=mvim
# if [[ "$TERM_PROGRAM" =~ iTerm|Apple_Terminal ]] && [[ -x "`which mvim`" ]]; then
#   export BUNDLER_EDITOR='mvim'
#   export GEM_EDITOR='mvim'
# fi
# export BROWSER="elinks"
export PAGER='less -SFXi'
export SUDO_PROMPT="Your P-to-the-Word:"
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# JAVA
# export java classpath for lucene
export CLASSPATH=/usr/local/Cellar/lucene-3.0.2/lucene-core-3.0.2.jar:/usr/local/Cellar/lucene-3.0.2/lucene-demos-3.0.2.jar:/Volumes/Data/incoming/stanford-parser-2010-02-26/stanford-parser.jar
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

# add Stanford parser to path
export STANFORD_PATH=/usr/local/Cellar/stanford-parser/1.6.2
export PATH=$PATH:$STANFORD_PATH

#for i in web util trees swing stats process parser objectbank movetrees misc math ling io international fsm
#do
#  export PATH=$PATH:$STANFORD_PATH/src/edu/stanford/nlp/$i
#done

# NODE & NPM
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules
export PATH=$PATH:/usr/local/share/npm/bin

# LATEX & BIBTEX
export PATH=$PATH:/usr/texbin

# PYTHON
# place python packages on path
#export PATH=$PATH:/usr/local/share/python:/usr/local/python/site-packages:/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages:/Library/Python/2.6/site-packages:/Library/Frameworks/Python.framework/Versions/2.6/bin
export PATH=$PATH:/usr/local/share/python:/usr/local/python/site-packages:/usr/local/lib/python2.7/site-packages

#export PYTHONPATH=/usr/local/share/python:/usr/local/python/site-packages:/Library/Frameworks/Python.framework/Versions/2.6/bin:/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages:/usr/local/lib/python2.6/site-packages/
export PYTHONPATH=/usr/local/share/python:/usr/local/python/site-packages:/usr/local/lib/python2.7/site-packages:/usr/local/Cellar/python/2.7.2/lib/python2.7
# place fabric files on pythonpath
export PYTHONPATH=$PYTHONPATH:/Users/mt/code_and_projects/sysadmin-and-deployment/fabfiles

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/virtualenv-devel
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/share/python/virtualenvwrapper.sh
# make pip use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# export PIP_RESPECT_VIRTUALENV=true

export PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"

# override python default of 64-bit mode
export VERSIONER_PYTHON_PREFER_32_BIT=no

# some more customization for Lion
# TODO: is this needed anymore?...
#export CC=/Developer/usr/bin/gcc

#export CC=/usr/llvm-gcc-4.2/bin/llvm-gcc-4.2
#export CC=/usr/local/Cellar/ccache/3.1.4/libexec/gcc
#export CC=/Applications/Xcode.app/Contents/Developer/usr/bin/gcc

#export CPP=/Developer/usr/bin/g++
#export CPP=/usr/bin/gcc
#export CPP=/usr/llvm-gcc-4.2/bin/llvm-g++-4.2

#export CXXCPP=/usr/llvm-gcc-4.2/bin/llvm-gcc-4.2

#export CXX=/usr/llvm-gcc-4.2/bin/llvm-g++-4.2
#export CXX=/usr/bin/g++

export CFLAGS="-0s -arch x86_64"
#export CFLAGS="-Wall -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk -arch x86_64"
#export CFLAGS="-Wall -isysroot /Developers/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk -arch x86_64"

export LDFLAGS=""
# export LDFLAGS="-arch x86_64 -syslibroot,/Developer/SDKs/MacOSX10.7.sdk"
#export LDFLAGS="-arch x86_64 -syslibroot,/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk"
#export LDFLAGS="-arch x86_64 -syslibroot,/Developers/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk"

#export FFLAGS="-arch x86_64 -m64"
export FFLAGS="-m64"
export FCLAGS="-m64"

export CXXFLAGS="-arch x86_64 -0s -pipe"
# export CXXFLAGS="-Wall -isysroot /Developer/SDKs/MacOSX10.7.sdk -arch x86_64"
#export CXXFLAGS="-Wall -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk -arch x86_64"
#export CXXFLAGS="-Wall -isysroot /Developer/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk -arch x86_64"

#export CPPFLAGS="-Wall -isysroot /Developer/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk -arch x86_64"

# RUBY
# place path to ruby gem binaries
# TODO: do i need this if i have it in .gemrc?
export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:/usr/local/Cellar/ruby/1.9.2-p136/bin:/usr/local/Cellar/ruby/1.9.2-p180/bin:/usr/local/Cellar/ruby/1.9.2-p290/bin:/usr/local/lib/ruby/gems/1.9.1/cache:$PATH

# Xcode is now stand-alone, link to their packaged binaries since they are most up-to-date
#export PATH=/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/sbin:$PATH

# HOMEBREW
# place homebrew as the head of PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# MACVIM for calling 'mvim' from CLI
export VIM_APP_DIR=/Applications/DevApps

# XCODE
# place ccache on head of path for faster xcode compiling
#export PATH=/usr/local/Cellar/ccache/3.1.4/libexec:$PATH

# ZSH
export ZSH=$HOME/code_and_projects/dotfiles/.dotfiles/zsh/oh-my-zsh
# export ZSH_THEME="clean"
export ZSH_THEME="powerline"
export TERM="xterm-256color"

# ADD gsl LIBRARY TO THE PATH
export PATH=/usr/local/Cellar/gsl/1.14/lib:/usr/local/Cellar/gsl/1.14/include:$PATH

# since i failed kindergarten this makes me feel good inside
#export PATH="$PATH:/Applications/github_dwlds/git-achievements"

# homebrew workaround for lion 10.7
#export HOMEBREW_USE_GCC=/usr/local/Cellar/ccache/3.1.4/libexec/gcc

export MACOSX_DEPLOYMENT_TARGET=10.8

# For cydia/jailbreak apps
export THEOS=/Applications/github_dwlds/theos

# STAGE env variables
export STG=/Volumes/Data/school_and_classes/sfu_classes_and_projects/vaughan-robotics-AI/rtv-Stage-97b203d
# export DYLD_LIBRARY_PATH=$STG/lib
export STAGEPATH=/usr/local/lib

# vnews RSS feed reader within vim
export VNEWS_VIM=mvim

# vmail gmail within vim
export VMAIL_VIM=mvim


echo "\e[1m\e[32mFinished loading vars.zsh\e[0m"

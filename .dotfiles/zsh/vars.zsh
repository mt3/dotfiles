# set up custom llvm/clang for use with compiling (xcode related mainly)
#GCC_VERSION = com.apple.compilers.llvm.clang.1_0
#RUN_CLANG_STATIC_ANALYZER = YES
#CC = /Volumes/Space/Users/bungi/Source/LLVM/llvm/Release/bin/clang

# auto-launch ssh keypairs so i don't have to enter the damned 137.5 character pwd every time
export SSH_ENV="$HOME/.ssh/environment"

export EDITOR=mvim
#export EDITOR=gvim
export BROWSER="elinks"
export PAGER="less"
export SUDO_PROMPT="Your Password:"

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

#RPROMPT='$(battery_charge)'


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


# NODE
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules


# LATEX, BIBTEX
export PATH=$PATH:/usr/texbin


# PYTHON
# place python packages on path
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages:/Library/Python/2.6/site-packages:/Library/Frameworks/Python.framework/Versions/2.6/bin

export PYTHONPATH=/Library/Frameworks/Python.framework/Versions/2.6/bin:/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages:/usr/local/lib/python2.6/site-packages/

# override python default of 64-bit mode
export VERSIONER_PYTHON_PREFER_32_BIT=yes


# some more customization for Lion
# TODO: is this needed anymore?...
export CC=/Developer/usr/bin/gcc #/usr/local/Cellar/ccache/3.1.4/libexec/gcc
export CFLAGS="-Wall -isysroot /Developer/SDKs/MacOSX10.7.sdk -arch x86_64"
export LDFLAGS="-arch x86_64 -syslibroot,/Developer/SDKs/MacOSX10.7.sdk"
export FFLAGS="-arch x86_64 -m64"
export CXXFLAGS="-Wall -isysroot /Developer/SDKs/MacOSX10.7.sdk -arch x86_64"


# RUBY
# place path to ruby gem binaries
# TODO: do i need this if i have it in .gemrc?
export PATH=/usr/local/Cellar/ruby/1.9.2-p136/bin:/usr/local/Cellar/ruby/1.9.2-p180/bin:/usr/local/Cellar/ruby/1.9.2-p290/bin/:/usr/local/lib/ruby/gems/1.9.1/cache:$PATH


# HOMEBREW
# place homebrew as the head of PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH


# MACVIM for calling 'mvim' from CLI
export VIM_APP_DIR=/Applications/DevApps


# XCODE
# place ccache on head of path for faster xcode compiling
export PATH=/usr/local/Cellar/ccache/3.1.4/libexec:$PATH


export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="clean"


# ADD gsl LIBRARY TO THE PATH
export PATH=/usr/local/Cellar/gsl/1.14/lib:/usr/local/Cellar/gsl/1.14/include:$PATH


# since i failed kindergarten this makes me feel good inside
#export PATH="$PATH:/Applications/github_dwlds/git-achievements"


# homebrew workaround for lion 10.7
#export HOMEBREW_USE_GCC=/usr/local/Cellar/ccache/3.1.4/libexec/gcc


# TODO: is this needed anymore?...
export MACOSX_DEPLOYMENT_TARGET=10.7


# STAGE env variables
export STG=/Volumes/Data/school_and_classes/sfu_classes_and_projects/vaughan-robotics-AI/rtv-Stage-97b203d
export DYLD_LIBRARY_PATH=$STG/lib
export STAGEPATH=/usr/local/lib


echo "\e[1m\e[32mFinished loading vars.zsh\e[0m"

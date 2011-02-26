# set up custom llvm/clang for use with compiling (xcode related mainly)
#GCC_VERSION = com.apple.compilers.llvm.clang.1_0
#RUN_CLANG_STATIC_ANALYZER = YES
#CC = /Volumes/Space/Users/bungi/Source/LLVM/llvm/Release/bin/clang

# auto-launch ssh keypairs so i don't have to enter the damned 137.5 character pwd every time
export SSH_ENV="$HOME/.ssh/environment"

export EDITOR=gvim
export BROWSER="elinks"
export PAGER="less"
export SUDO_PROMPT="Your Password:"

#RPROMPT='$(battery_charge)'

# JAVA
# export java classpath for lucene
export CLASSPATH=/usr/local/Cellar/lucene-3.0.2/lucene-core-3.0.2.jar:/usr/local/Cellar/lucene-3.0.2/lucene-demos-3.0.2.jar:/Volumes/Data/incoming/stanford-parser-2010-02-26/

export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

# add Stanford parser to path
export STANFORD_PATH=/usr/local/Cellar/stanford-parser/1.6.2
export PATH=$PATH:$STANFORD_PATH

for i in web util trees swing stats process parser objectbank movetrees misc math ling io international fsm
do
  export PATH=$PATH:$STANFORD_PATH/src/edu/stanford/nlp/$i
done


# PYTHON
# place python packages on path
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages:/Library/Python/2.6/site-packages:/Library/Frameworks/Python.framework/Versions/2.6/bin

export PYTHONPATH=/Library/Frameworks/Python.framework/Versions/2.6/bin


# RUBY
# place path to ruby gem binaries
# TODO: do i need this if i have it in .gemrc?
export PATH=/usr/local/Cellar/ruby/1.9.2-p136/bin:$PATH


# HOMEBREW
# place homebrew as the head of PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH


# XCODE
# place ccache on head of path for faster xcode compiling
export PATH=/usr/local/Cellar/ccache/3.1.4/libexec:$PATH

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="clean"

# ADD gsl LIBRARY TO THE PATH
export PATH=/usr/local/Cellar/gsl/1.14/lib:/usr/local/Cellar/gsl/1.14/include:$PATH

# since i failed kindergarten this makes me feel good inside
#export PATH="$PATH:/Applications/github_dwlds/git-achievements"

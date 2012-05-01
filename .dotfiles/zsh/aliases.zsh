# APPLICATIONS
#############################################################
alias jek="jekyll && echo && echo BROWSE TO: http://0.0.0.0:4000 && echo && jekyll --server"
#alias mate="mate -l1"
alias kill="kill -9"
alias youtube-dl="/Applications/github_dwlds/youtube-dl/youtube-dl"
alias eco="echo"
alias gclient="/Applications/github_dwlds/depot_tools/gclient"
alias gvim='/Applications/DevApps/MacVim.app/Contents/MacOS/Vim -g'
alias vimdiff='/usr/local/bin/mvim mvimdiff'
alias nightly='/Applications/BrowserApps/Nightly.app/Contents/MacOS/firefox'
alias firefox='/Applications/BrowserApps/Nightly.app/Contents/MacOS/firefox'
# use my dev version of showoff
alias showoff='/Applications/github_dwlds/showoff/bin/showoff'
alias skim='/Applications/PDFApps/Skim.app/Contents/MacOS/Skim'
alias cloud9='/Applications/github_dwlds/cloud9/bin/cloud9.sh'
#############################################################


# GENERAL TERMINAL SHORTCUTS
#############################################################
alias .='pwd'
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. & cd .. & cd .."
#TODO: toggle those wanted
# alias -g L='|less'
alias -g G='|grep'
# alias -g W='|wc'
# alias -g C='|colordiff'
alias apps="cd /Applications"
alias appsg="cd /Applications/github_dwlds"
alias cdd='cd -' # goto last dir cd'ed from
alias clr="clear"
alias curl="curl -O"
alias dir_sizes='du -cks * | sort -rn |head -11' # Lists the size of all the folders within current dir (Mb)
alias dotf="ls .[a-zA-Z0-9_]*"
alias down="cd ~/Downloads"
alias du='du -h -d 2'
alias e="mvim"
alias ea='mvim ~/.dotfiles/zsh/aliases.zsh && reload' # Edit aliases
alias edit="${EDITOR}"
alias ez='mvim ~/.zshrc && source ~/.zshrc' # opens zshrc file in textmate, then reloads it immediately (thieved from http://ozmm.org/posts/git_bash_aliases.html)
alias folder_sizes=dir_sizes
alias frameworks="cd /Library/Frameworks/frameworks-under-git"
# add a poor facsimile for Linux's `free` if we're on Mac OS
if ! type free > /dev/null 2>&1 && [[ "$(uname -s)" == 'Darwin' ]]
then
  alias free="top -s 0 -l 1 -pid 0 -stats pid | grep '^PhysMem: ' | cut -d : -f 2- | tr ',' '\n'"
fi
alias help="cheat" # uses ruby gem `cheat`
alias h="cheat" # uses ruby gem `cheat`
alias k9='kill -9'
alias ka9='killall -9'
alias l.="ls -d .*"
alias less='less -i'
alias lf='ls -CF'
alias ll="ls -lth"
alias lls="ls -Gh"
alias ls='ls -alGh'
alias md="mkcd"
alias notes="ack 'TODO|FIXME|XXX|HACK'"
alias ps='ps aux'
alias psg="ps aux | grep "
alias queen="ssh mta45@queen.fas.sfu.ca"
alias reload="source ~/.zshrc"
alias rsyncp='rsync -avz -e ssh --progress --partial'
alias so="source ~/.zshrc"
alias ssh="ssh -c arcfour,blowfish-cbc -C"
# This trick makes sudo understand all my aliases
alias sudo='sudo '
#alias systail='tail -f -n0 /var/log/system.log'
alias TODOs="ack 'TODO|FIXME|XXX|HACK'"
alias trash="rm -rf"
alias up="cd .."
alias upd="upd >&1 > ~/.logs/updated-repos-logfiles-`date +%F`-`date +%T`.txt"
alias zshrc='mvim ~/.zshrc && source ~/.zshrc' # opens zshrc file in textmate, then reloads it immediately (thieved from http://ozmm.org/posts/git_bash_aliases.html)
#############################################################


# SOLR
#############################################################
alias solrstart="sh /Applications/LucidImagination/LucidWorksEnterprise/app/bin/start.sh"
alias solrstop="sh /Applications/LucidImagination/LucidWorksEnterprise/app/bin/stop.sh"
#############################################################


# TMUX
#############################################################
alias tmxls="tmux ls"
alias tmuxls="tmux ls"
# for tmux integration with iterm2
alias tmux='tmux -C'
#############################################################


# TASK
#############################################################
alias taskl="task list"
alias tasks="task list"
alias taska="task add"
alias taskd="task done"
alias taskc="task completed"
alias taskh="task ghistory"
#############################################################


# cribbed from benhoskings
# http://github.com/benhoskings/dot-files/blob/master/files/.aliases/commands
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -nr | head -n 20"


# CABAL (haskell)
#############################################################
alias cabs="cabal list"
alias cabl="cabal list --installed && echo \"\n\nNOTE: You can also type \n\tcabal list --installed --simple-output\nfor a briefer message\""
alias cabi="cabal info"
alias cabin="cabal install"
alias cabu="cabal install"
#alias cabunin="cabal uninstall" TODO
#alias cabalu="cabal update" #TODO: doesn't update installed packages
#alias cabo=" outdated" TODO
#alias cabc="cabal clean" TODO
#############################################################


# HOMEBREW
#############################################################
alias bs="brew search"
alias bi="brew info"
alias brewin="brew install"
alias brewunin="brew uninstall"
alias bu="brew upgrade"
alias brewu="brew update"
alias bo="brew outdated"
alias brewc="brew cleanup && cd /Users/mt/Library/Caches/Homebrew/ && for item in *; do rm -rf $item; done"
#############################################################


# FABRIC
#############################################################
alias fabl="fab --list-format=nested --list"
#############################################################


# GIT
#############################################################
alias g="git"
alias gitc="git commit -m"
alias gcm="git commit -m"
alias gits="git status -sb"
alias gitp="git pull"
alias gitu="git pull"
#alias gitl="git log --oneline --decorate"
alias gitl="git log --pretty=format:\"%ad | %s%d [%an]\" --graph --date=short"
alias gitd="git diff --word-diff"
alias gitcl="git clone"
alias gitsvnc="git svn clone"
alias gitsvncl="git svn clone"
alias git-tm-bund="cd ~/Library/Application\ Support/TextMate/Bundles/ && git clone"
#alias git="git-achievements"
alias gpush="git push -u origin master"
alias gitsub="git submodule foreach 'git pull'"

# GIT FLOW
alias gf="git flow"
#############################################################


# RUBY GEMS
#############################################################
alias gemu="gem update"
alias gemus="gem update --system"
alias gemin="gem install"
alias geml="gem list"
alias gemc="gem cleanup"
alias gems="gem search -r"
alias gemo="gem outdated"
#############################################################


# PYTHON
#############################################################
alias py="python"
alias pyv="python -V"

alias pips="pip search"
alias pipl="pip freeze"
alias pipin="pip install"
# alias pipup="pip install --upgrade"
# update all outdated packages
alias pipup="pip freeze --local | cut -d = -f 1  | xargs pip install -U"
alias pipu="pip install -U"

# yolk extends pip
alias pipo="yolk -U"
# show latest releases from past 12 hours
alias piprecent="yolk -L 12"

# stallion allows viewing of installed pip packages in yr browser
alias stallion="python -m stallion.main"
#############################################################


# LUCENE
#############################################################
alias lucin="java org.apache.lucene.demo.IndexFiles"
alias lucs="java org.apache.lucene.demo.SearchFiles"
#############################################################


# NODE and NPM
#############################################################
alias npmin="npm install"
alias npml="npm ls installed"
alias npmla="npm la"
alias npmu="npm update"
alias npmup="npm update npm"
alias npmo="npm outdated"
alias npmunin="npm uninstall"
alias npms="npm search"
alias npma="npm activate"
alias npmd="npm deactivate"
alias npmc="npm cache clean"
alias npmcl="npm cache clean"
alias npmi="npm view"
#############################################################


# Suffix Aliases
#############################################################
# open all tex files with vim
alias -s tex=mvim
alias -s org=mvim
alias -s pdf=skim
#############################################################



echo "\e[1m\e[32mFinished loading aliases.zsh\e[0m"

# APPLICATIONS
#############################################################
alias jek="jekyll && echo && echo BROWSE TO: http://0.0.0.0:4000 && echo && jekyll --server"
#alias mate="mate -l1"
alias kill="kill -9"
alias youtube-dl="/Applications/github_dwlds/youtube-dl/youtube-dl"
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


# CONVENIENT SHORTCUTS
#############################################################
alias up="cd .."
alias down="cd ~/Downloads"
alias apps="cd /Applications"
alias appsg="cd /Applications/github_dwlds"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. & cd .. & cd .."
alias l.="ls -d .*"
alias ls="ls -lth"
alias edit="${EDITOR}"
alias frameworks="cd /Library/Frameworks/frameworks-under-git"
alias queen="ssh mta45@queen.fas.sfu.ca"
alias clr="clear"
alias e="mvim"
#alias systail='tail -f -n0 /var/log/system.log'
alias dotf="ls .[a-zA-Z0-9_]*"
alias reload="source ~/.zshrc"
alias so="source ~/.zshrc"
alias dir_sizes='du -cks * | sort -rn |head -11' # Lists the size of all the folders within current dir (Mb)
alias folder_sizes=dir_sizes
alias upd="upd >&1 > ~/.logs/updated-repos-logfiles-`date +%F`-`date +%T`.txt"
alias help="cheat" # uses ruby gem `cheat`
alias h="cheat" # uses ruby gem `cheat`
alias zshrc='mate ~/.zshrc && source ~/.zshrc' # opens zshrc file in textmate, then reloads it immediately (thieved from http://ozmm.org/posts/git_bash_aliases.html)
alias ea='mate -w ~/.dotfiles/zsh/aliases && reload' # Edit aliases
alias cdd='cd -' # goto last dir cd'ed from
alias md="mkcd"
alias rsyncp='rsync -avz -e ssh --progress --partial'
alias wh="which" # w was already taken!
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
alias cabals="cabal list"
alias cabali="cabal info"
alias cabalin="cabal install"
#alias cabalunin="cabal uninstall" TODO
alias cabalu="cabal update" #TODO: doesn't update installed packages
#alias cabalo=" outdated" TODO
alias cabalc="cabal clean"
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
alias pipup="pip install --upgrade"
alias pipu="pip install -U"

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
alias npmin="npm install -g"
alias npml="npm ls installed"
alias npmu="npm update"
alias npmo="npm outdated"
alias npmunin="npm uninstall"
alias npms="npm search"
alias npma="npm activate"
alias npmd="npm deactivate"
alias npmc="npm cache clean"
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

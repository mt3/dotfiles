# ZSH Aliases

# APPLICATIONS {{{1
#############################################################
alias cloud9='/Applications/github_dwlds/cloud9/bin/cloud9.sh'
alias jek="jekyll && echo && echo BROWSE TO: http://0.0.0.0:4000 && echo && jekyll --server"
#alias mate="mate -l1"
alias firefox='/Applications/BrowserApps/Nightly.app/Contents/MacOS/firefox'
alias gclient="/Applications/github_dwlds/depot_tools/gclient"
alias gitboard='php /Applications/github_dwlds/Gitboard/gitboard.php'
alias nightly='/Applications/BrowserApps/Nightly.app/Contents/MacOS/firefox'
alias proxy='squid -f ~/etc/squid.conf && echo "Squid started."'
# use my dev version of showoff
alias showoff='/Applications/github_dwlds/showoff/bin/showoff'
alias skim='/Applications/PDFApps/Skim.app/Contents/MacOS/Skim'
alias spotoff="sudo mdutil -a -i off" # Disable Spotlight
alias spoton="sudo mdutil -a -i on" # Enable Spotlight
alias youtube-dl="/Applications/github_dwlds/youtube-dl/youtube-dl"
alias v='vagrant'
# }}}

# GENERAL TERMINAL SHORTCUTS {{{1
#############################################################
# Inline aliases {{{
#   zsh -g aliases can be anywhere in command line
alias -g G='| grep -'
alias -g L='| less'
#this reduces a command like:
# ls | grep foo | less
#to:
# ls G foo L
#TODO: toggle those suffix options that are wanted
# alias -g R=' > /c/aaa/tee.txt '           # redirect
# alias -g T=' | tee /c/aaa/tee.txt '       # tee
# alias -g F=' | fmt -'                     # format
# alias -g W=' | wc -l'                     # wc
# alias -g L='|less'
# alias -g W='|wc'
# alias -g C='|colordiff'
# alias -g ONE="| awk '{ print \$1}'"
# }}}

# Suffix aliases {{{
alias -s tex=mvim # open all tex files with vim
alias -s org=mvim
alias -s pdf=skim
# }}}

alias .='pwd'
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. & cd .. & cd .."
alias ack='ack -a'
alias apps="cd /Applications"
alias appsg="cd /Applications/github_dwlds"
alias appsl="cd /Volumes/Data/developer/large-repos"
alias cdd='cd -' # goto last dir cd'ed from
alias ciao='sudo shutdown -h now'
alias clr="clear"
alias cls='clear' # note: ctrl-L under zsh does something similar
alias curl="curl -O"
alias dir_sizes='du -cks * | sort -rn |head -11' # Lists the size of all the folders within current dir (Mb)
alias dirtree="ls -R | grep \":$\" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias disks='diskutil list'
alias dotf="ls .[a-zA-Z0-9_]*"
alias down="cd ~/Downloads"
alias du='du -h -d 2'
alias du1='du -hs *(/)' # du with depth 1
alias ducks='du -cks * | sort -rn | head -15'
alias e="mvim"
alias ea='mvim ~/.dotfiles/zsh/aliases.zsh && reload' # Edit aliases
alias eco="echo"
alias edit="${EDITOR}"
alias ez='mvim ~/.zshrc && source ~/.zshrc' # opens zshrc file in textmate, then reloads it immediately (thieved from http://ozmm.org/posts/git_bash_aliases.html)
alias folder_sizes=dir_sizes
alias frameworks="cd /Library/Frameworks/frameworks-under-git"
# add a poor facsimile for Linux's `free` if we're on Mac OS
if ! type free > /dev/null 2>&1 && [[ "$(uname -s)" == 'Darwin' ]] then
    alias free="top -s 0 -l 1 -pid 0 -stats pid | grep '^PhysMem: ' | cut -d : -f 2- | tr ',' '\n'"
fi
alias gr="GREP_COLOR='1;4;34' grep --color=always --exclude='*~' --exclude='*.svn*' --exclude='*.tmp' --exclude=entries -r"
alias help="cheat" # uses ruby gem `cheat`
alias h="cheat" # uses ruby gem `cheat`
alias info='info --vi-keys'
alias k9='kill -9'
alias ka9='killall -9'
alias kill="kill -9"
alias l.="ls -d .*"
alias less='less -i'
alias lf='ls -CF'
alias ll="ls -lth"
alias lls="ls -Gh"
alias ls='ls -alGh'
alias lsd='ls -ld *(-/DN)' # list only dirs
# alias lsd='ls -l | grep "^d"' # List only directories
#list all files without an extension (no dot)
alias lsnoext='ls *~*.*(.)'
# print the 5 most recent files
alias lsrecent5='ls *(om[1,5])'
alias lss='ls --color=auto --human-readable --group-directories-first --classify'
alias md="mkcd"
alias modified_today='ls *(m-1)' # files modified today. or could use 'ls *(m0)'
alias not_modified_today='ls *(^m0)' # files NOT modified today
alias notes="ack 'TODO|FIXME|XXX|HACK'"
alias pg='ps -ef | grep '
# cribbed from benhoskings  http://github.com/benhoskings/dot-files/blob/master/files/.aliases/commands
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -nr | head -n 20"
alias ps='ps aux'
alias psg='ps aux | grep'
alias psgrep='ps aux|grep'
alias ps2='ps -opid,uid,cpu,time,stat,command'
alias queen="ssh mta45@queen.fas.sfu.ca"
# alias reload="source ~/.zshrc"
alias reload!='. ~/.zshrc'
alias rsyncp='rsync -avz -e ssh --progress --partial'
alias s='pkglookup'
alias so="source ~/.zshrc"
alias ssh="ssh -c arcfour,blowfish-cbc -C"
# This trick makes sudo understand all my aliases
alias sudo='sudo '
#alias systail='tail -f -n0 /var/log/system.log'
alias tlf='tail -f'
alias TODOs="ack 'TODO|FIXME|XXX|HACK'"
alias trash="rm -rf"
alias up="cd .."
# alias upd="upd >&1 > ~/.logs/updated-repos-logfiles-`date +%F`-`date +%T`.txt"
alias whats-my-ip="curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+'"
alias zshrc='mvim ~/.zshrc && source ~/.zshrc' # opens zshrc file in textmate, then reloads it immediately (thieved from http://ozmm.org/posts/git_bash_aliases.html)
# }}}

# FABRIC {{{1
#############################################################
alias fabls="fab --list-format=nested --list"
# }}}

# GIT {{{1
#############################################################
alias g="git"
alias gcreadme='g a README.textile && g c "Updated README." && git push'
alias gcl="git clone"
alias gcm="git commit -m"
alias gitc="git commit -m"
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

# GIT FLOW {{{2
alias gf="git flow"
# }}}
# }}}

# HASKELL {{{1
#############################################################
alias pandoc='~/Library/Haskell/ghc-7.4.2/lib/pandoc-1.9.4.2/bin/pandoc'
# CABAL {{{2
alias cabs="cabal list"
alias cabl="cabal list --installed && echo \"\n\nNOTE: You can also type \n\tcabal list --installed --simple-output\nfor a briefer message\""
alias cabi="cabal info"
alias cabin="cabal install"
alias cabu="cabal install"
#alias cabunin="cabal uninstall" TODO
#alias cabalu="cabal update" #TODO: doesn't update installed packages
#alias cabo=" outdated" TODO
#alias cabc="cabal clean" TODO
# }}}
# }}}

# HOMEBREW {{{1
#############################################################
alias bs="brew search"
alias bi="brew info"
alias brewin="brew install"
alias brewunin="brew uninstall"
alias bu="brew upgrade"
alias brewu="brew update"
alias bo="brew outdated"
alias brewc="brew cleanup && cd /Users/mt/Library/Caches/Homebrew/ && for item in *; do rm -rf $item; done"
# }}}

# LUCENE {{{1
#############################################################
alias lucin="java org.apache.lucene.demo.IndexFiles"
alias lucs="java org.apache.lucene.demo.SearchFiles"
# }}}

# NODE {{{1
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
# }}}

# PYTHON {{{1
#############################################################
alias p="python"
alias py="python"
alias pyv="python -V"

alias pipf="pip freeze"
alias pips="pip search"
# alias pipl="pip freeze"
alias pipl="yolk -l"
alias pipin="pip install"
alias pipnew="yolk --latest-releases 24"
alias pipr="pip freeze"
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
# }}}

# SOLR {{{1
alias solrstart="sh /Applications/LucidImagination/LucidWorksEnterprise/app/bin/start.sh"
alias solrstop="sh /Applications/LucidImagination/LucidWorksEnterprise/app/bin/stop.sh"
# }}}

# TMUX {{{1
#############################################################
alias tmxls="tmux ls"
alias tmuxls="tmux ls"
# for tmux integration with iterm2
alias tmux='tmux -C'
# }}}

# TASK {{{1
#############################################################
alias taskl="task list"
alias tasks="task list"
alias taska="task add"
alias taskd="task done"
alias taskc="task completed"
alias taskh="task ghistory"
# }}}

# VIM {{{1
alias gvim='/Applications/DevApps/MacVim.app/Contents/MacOS/Vim -g'
alias vi='mvim'
alias vim='/Applications/DevApps/MacVim.app/Contents/MacOS/Vim'
alias vimdiff='/usr/local/bin/mvim mvimdiff'
# }}}

# RUBY GEMS {{{1
#############################################################
alias gemu="gem update"
alias gemus="gem update --system"
alias gemin="gem install"
alias geml="gem list"
alias gemc="gem cleanup"
alias gems="gem search -r"
alias gemo="gem outdated"
# }}}

echo "\e[1m\e[32mFinished loading aliases.zsh\e[0m"

# vim: set filetype=zsh foldmarker={{{,}}} foldmethod=marker:

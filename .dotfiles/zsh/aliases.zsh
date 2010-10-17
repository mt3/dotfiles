# APPLICATIONS
alias jek="jekyll && echo && echo BROWSE TO: http://0.0.0.0:4000 && echo && jekyll --server"
alias mate="mate -l1"
alias aquamacs='open /Applications/Aquamacs\ Emacs.app/'
alias kill="kill -9"
alias youtube-dl="/Applications/github_dwlds/youtube-dl/youtube-dl"

# CONVENIENT SHORTCUTS
alias up="cd .."
alias down="cd /Users/mt/Downloads"
alias apps="cd /Applications"
alias appsg="cd /Applications/github_dwlds"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. & cd .. & cd .."
alias l.="ls -d .*"
alias frameworks="cd /Library/Frameworks/frameworks-under-git"
alias queen="ssh mta45@queen.fas.sfu.ca"
alias clr="clear"
alias e="echo"
#alias systail='tail -f -n0 /var/log/system.log'
alias dotf="ls .[a-zA-Z0-9_]*"
alias reload="source ~/.zshrc"
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

# TASK
alias taskl="task list"
alias tasks="task list"
alias taska="task add"
alias taskd="task done"
alias taskc="task completed"
alias taskh="task ghistory"

# cribbed from benhoskings http://github.com/benhoskings/dot-files/blob/master/files/.aliases/commands
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -nr | head -n 20"

# HOMEBREW
alias bs="brew search"
alias bi="brew info"
alias brewin="brew install"
alias brewunin="brew uninstall"
alias bu="brew update"
alias bo="brew outdated"
alias brewc="brew cleanup && cd /Users/mt/Library/Caches/Homebrew/ && for item in *; do rm -rf $item; done"

# GIT
alias gitc="git commit -am"
alias gits="git status"
alias gitp="git pull"
alias gitu="git pull"
alias gitl="git log --oneline --decorate"
alias gitcl="git clone"
alias gitsvnc="git svn clone"
alias gitsvncl="git svn clone"
alias git-tm-bund="cd ~/Library/Application\ Support/TextMate/Bundles/ && git clone"

# RUBY GEMS
alias gemu="gem update"
alias gemus="gem update --system"
alias gemin="gem install"
alias geml="gem list"
alias gemc="gem cleanup"
alias gems="gem search -r"
alias gemo="gem outdated"

# PYTHON
alias py="python"
alias pyv="python -V"
alias pips="pip search"
alias pipl="pip freeze"
alias pipin="pip install"
alias pipup="pip install --upgrade"

# LUCENE
alias lucin="java org.apache.lucene.demo.IndexFiles"
alias lucs="java org.apache.lucene.demo.SearchFiles"


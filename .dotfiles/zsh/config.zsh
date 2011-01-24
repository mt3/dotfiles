autoload zmv

# zsh config options
setopt append_history       # Append, don't overwrite, the history file
setopt autocd                  # change to dirs without cd
setopt BANG_HIST		    # Allow ! for accessing history 
setopt cdablevars              # avoid the need for an explicit $
setopt extendedglob            # awesome pattern matching (ala Dir.glob() in Ruby)
setopt EXTENDED_HISTORY 	   # add timestamps to history
setopt HIST_IGNORE_ALL_DUPS    # don't record dupes in history
setopt hist_no_store        # Don't store invocations of `history`
setopt hist_reduce_blanks   # Remove superfluous blanks before recording
setopt listtypes               # show types in completion
setopt nobeep                  # i hate beeps
setopt nohup                   # and don't kill BG jobs when shell exits
setopt NOHUP			    # Don't HUP running jobs on logout
setopt notify                  # notify of BG job completion immediately
#setopt printexitvalue          # alert me if something's failed
setopt promptcr                # ensure a new line before prompt is drawn




# Use menu ()
zstyle ':completion:*' menu select
#zstyle ':completion:*' completer _expand _complete

# only java files for javac
zstyle ':completion:*:javac:*' files '*.java'

# no binary files for vi or textmate
zstyle ':completion:*:vi:*' ignored-patterns '*.(o|a|so|aux|dvi|log|swp|fig|bbl|blg|bst|idx|ind|out|toc|class|pdf|ps|pyc)'
zstyle ':completion:*:mate:*' ignored-patterns '*.(o|a|so|aux|dvi|log|swp|fig|bbl|blg|bst|idx|ind|out|toc|class|pdf|ps|pyc)'
zstyle ':completion:*:vim:*' ignored-patterns '*.(o|a|so|aux|dvi|log|swp|fig|bbl|blg|bst|idx|ind|out|toc|class|pdf|ps|pyc)'
zstyle ':completion:*:gvim:*' ignored-patterns '*.(o|a|so|aux|dvi|log|swp|fig|bbl|blg|bst|idx|ind|out|toc|class|pdf|ps|pyc)'
# no binary files for less
zstyle ':completion:*:less:*' ignored-patterns '*.(o|a|so|dvi|fig|out|class|pdf|ps|pyc)'
zstyle ':completion:*:zless:*' ignored-patterns '*.(o|a|so|dvi|fig|out|class|pdf|ps|pyc)'
# pdf for xpdf
zstyle ':completion:*:xpdf:*' files '*.pdf'
# tar files
zstyle ':completion:*:tar:*' files '*.tar|*.tgz|*.tz|*.tar.Z|*.tar.bz2|*.tZ|*.tar.gz'
# latex to the fullest
# for printing
zstyle ':completion:*:xdvi:*' files '*.dvi'
zstyle ':completion:*:dvips:*' files '*.dvi'

# Give long completion options in a list. tab to advance.
zstyle ':completion:*:default' list-prompt '%S%M matches%s'

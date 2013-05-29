#TODO: 'autoload zmv' needs to be first?
autoload zmv

# ZSH Config
#
# Set options with setopt
# unset with unsetopt

# autoload -U age
setopt always_to_end          # move cursor to end after completion
setopt append_history       # Append, don't overwrite, the history file
setopt autocd                  # change to dirs without cd
unsetopt correctall         # no autocorrect
setopt auto_list            # list choice on ambiguous command
setopt auto_menu            # show menu for completion
# setopt AUTO_PUSHD         # automatically append dirs to the push/pop list
setopt AUTO_REMOVE_SLASH    # remove trailing directory slash
setopt BANG_HIST		    # Allow ! for accessing history
setopt cdablevars              # avoid the need for an explicit $. try to expand the expression as if it were preceded by ~
#cdpath=(~ ~/Projects)          #TODO: document
autoload -U colors && colors
autoload -Uz compinit && compinit # Load new completion system
unsetopt COMPLETE_IN_WORD         # completion works inside words
# setopt correct                  # automatically correct the spelling of commands
# setopt dotglob
#setopt emacs                   # use emacs bindkeys. same as 'bindkey -e'
setopt extendedglob            # awesome pattern matching (ala Dir.glob() in Ruby)
setopt EXTENDED_HISTORY 	   # add timestamps to history
# unsetopt flowcontrol          # TODO document
setopt glob_complete            # matches are generated as if a `*' was added to the end of the word, or inserted at the cursor when COMPLETE_IN_WORD is set.  This actually uses pattern matching, not globbing, so it works not only for files but for any completion, such as options, user names, etc.
# setopt  globcomplete            # TODO which globcomplete is valid?
# setopt HASH_CMDS              # store cmd location for speed. Note the location of each command the first time it is executed. Subsequent invocations of the same command will use the saved location, avoiding a path search
# setopt HASH_DIRS              # store all cmd locations for speed
setopt HIST_IGNORE_ALL_DUPS    # don't record dupes in history
setopt hist_no_store            # Don't store invocations of `history`
setopt hist_reduce_blanks       # Remove multiple/superfluous blanks before recording to history
# setopt INC_APPEND_HISTORY       # Save history line by line
# setopt INTERACTIVE              # shell is interactive
# setopt INTERACTIVE_COMMENTS    # shell has interactive comments using #
# setopt LIST_ROWS_FIRST        # list completions in order across (1st 2nd 3rd...)
setopt listtypes               # show filetypes in completion
setopt LONG_LIST_JOBS           # verbose listing of jobs
setopt MENU_COMPLETE            # cycle thru completions
setopt nobeep                  # fukc beepers
# setopt NO_BG_NICE
# setopt no_clobber         # prevent > redirection from truncating the given file if it already exists
setopt NOHUP			    # Don't HUP running jobs on logout and don't kill BG jobs when shell exits
setopt nonomatch             # fix weird matching
setopt notify                  # notify of BG job completion immediately
# unsetopt OVERSTRIKE           # Start line editor in overstrike mode
#setopt printexitvalue          # alert me if something's failed. show a message with the exit code when a command returns with a non-zero exit code
setopt promptcr                # ensure a new line before prompt is drawn
autoload -U promptinit && promptinit    # allows the use of the prompt command for changing prompts
setopt PUSHD_IGNORE_DUPS        # Don’t push multiple directories on stack
setopt PROMPT_SUBST             # Allow for functions in the prompt. Turns on command substitution in the prompt (and parameter expansion and arithmetic expansion)
# setopt REC_EXACT                # exact completions are good even if ambiguous
# setopt RM_STAR_SILENT         # Don’t warn on rm *
setopt SHARE_HISTORY
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable hg git bzr svn
zstyle ':vcs_info:*+*:*' debug true
zstyle ':vcs_info:git*:*' get-revision true
zstyle ':vcs_info:git*:*' check-for-changes true
#setopt vi                      # use vi bindkeys. same as 'bindkey -v'
# autoload -U zargs             # an alternative to find, -exec, and xargs
# autoload -U zgitinit; zgitinit
autoload zkbd
setopt ZLE                    # Use zsh line editor. Set by default in interactive shells connected to a terminal
zle_highlight=(region:standout special:standout suffix:bold isearch:underline)
# autoload -U zmv               # a command for renaming files by means of shell patterns (like 'mv'cmd)
# zmodload -i zsh/complist
zmodload zsh/terminfo
zmodload zsh/zleparameter
zmodload zsh/zutil


# remove duplicate entries from path,cdpath,manpath & fpath
typeset -U path cdpath manpath fpath


# load all available modules at startup
# typeset -U m
# m=()
# for md ($module_path) m=($m $md/**/*(*e:'REPLY=${REPLY#$md/}'::r))
# zmodload -i $m


#############
#
# COMPLETIONS
#   http://zshwiki.org/home/examples/compsys/general

# complete as much u can ..
# zstyle ':completion:*' completer _complete _list _oldlist _expand _ignored _match _correct _approximate _prefix
# complete less
#zstyle ':completion:*' completer _expand _complete _list _ignored _approximate
# complete minimal
#zstyle ':completion:*' completer _complete _ignored

# matches case insensitive for lowercase
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# pasting with tabs doesn't perform completion
# zstyle ':completion:*' insert-tab pending

# Fuzzy matching of completions for when you mistype them
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
#zstyle ':completion:*' completer _expand _complete
# zstyle ':completion:*' menu select
zstyle ':completion:*:match:*' original only
# allow 1 error
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# how many completions switch on menu selection use 'long' to start menu compl. if list is bigger than screen or some number to start menu compl. if list has that number of completions (or more).
# zstyle ':completion:*' menu select=long
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'

# use cache to speed up completion
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Give long completion options in a list. tab to advance.
zstyle ':completion:*:default' list-prompt '%S%M matches%s'

# add colors to completions
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# on processes completion complete all user processes
zstyle ':completion:*:processes' command 'ps -au$USER'

# Completing process IDs with menu selection:
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

# determine in which order the names (files) should be listed and completed when using menu completion
# `size' to sort them by the size of the file
# `links' to sort them by the number of links to the file
# `modification' or `time' or `date' to sort them by the last modification time
# `access' to sort them by the last access time
# `inode' or `change' to sort them by the last inode change time
# `reverse' to sort in decreasing order
# If the style is set to any other value, or is unset, files will be sorted alphabetically by name
zstyle ':completion:*' file-sort name

# Remove the trailing slash (usefull in ln)
zstyle ':completion:*' squeeze-slashes true

# formatting and messages
zstyle ':completion:*' verbose no
zstyle ':completion:*:descriptions' format $'%{\e[0;31m%}%d%{\e[0m%}'
zstyle ':completion:*:messages' format $'%{\e[0;31m%}%d%{\e[0m%}'
zstyle ':completion:*:warnings' format $'%{\e[0;31m%}No matches for: %d%{\e[0m%}'
zstyle ':completion:*:corrections' format $'%{\e[0;31m%}%d (errors: %e)%{\e[0m%}'
zstyle ':completion:*' group-name ''

# Ignore completion functions for commands you don’t have
zstyle ':completion:*:functions' ignored-patterns '_*'

# Ignore what's already in the line
zstyle ':completion:*:(rm|kill|diff):*' ignore-line yes
zstyle ':completion:*:(git add):*' ignore-line yes

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
# latex to the fullest for printing
zstyle ':completion:*:xdvi:*' files '*.dvi'
zstyle ':completion:*:dvips:*' files '*.dvi'

# Fall into menu selection immediately sorted by time
# zstyle ':completion:*:*:xdvi:*' menu yes select
# zstyle ':completion:*:*:xdvi:*' file-sort time

# TODO document
# zstyle ':completion:*' prefix-needed true

function zle-line-init zle-keymap-select {
    # Change cursor based on Vi mode and also tmux/screen state change color of cursor
    if [ $KEYMAP = vicmd ]; then
        if [[ $TMUX = '' ]]; then
            echo -ne "\033]12;Red\007"
        else
            printf '\033Ptmux;\033\033]12;red\007\033\\'
        fi
    else
        if [[ $TMUX = '' ]]; then
            echo -ne "\033]12;Grey\007"
        else
            printf '\033Ptmux;\033\033]12;grey\007\033\\'
        fi
    fi

    # change cursor to block, underline, or pipe
    # TODO: change from not only color, but also whether the cursor is a block or a pipe
    case $KEYMAP in
        vicmd) print -rn -- $terminfo[cvvis];; # block cursor
        viins) print -rn -- $terminfo[cnorm];; # less visible cursor
    esac

    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1

    # for iterm
    # ^[]50;CursorShape=N^G
    # where N=0:Block, 1:Vertical bar, 2:Underline

    zle reset-prompt
}
# zle-line-init () {
#     zle -K viins
#     echo -ne "\033]12;Grey\007"
# }
zle -N zle-keymap-select
zle -N zle-line-init


echo "\e[1m\e[32mFinished loading config.zsh\e[0m"

# vim: set ft=sh foldmethod=marker foldmarker={,}:

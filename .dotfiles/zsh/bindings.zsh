# zsh Keybindings
######################

#TODO: document
# vi mode (-v is 'viins', -a is 'vicmd'
bindkey -v
# emacs mode
# bindkey -e

# use incremental search
#TODO: document
# bindkey '^[[R' history-incremental-search-backward
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

#TODO: document
# bindkey '^[[3~'  delete-char
# bindkey '^[3;5~' delete-char

#TODO: document
# bindkey '^[[E' end-of-line

# History search with up and down arrow keys
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Option-Left & Option-Right for moving word-by-word in OS X
bindkey "\e\e[C" vi-forward-word
bindkey "\e\e[D" vi-backward-word

bindkey ' ' magic-space    # history expansion on space

#TODO: toggle ones you want
# bindkey "^?" backward-delete-char
# bindkey -M vicmd "^R" redo
# bindkey -M vicmd "u" undo
# bindkey -M vicmd "ga" what-cursor-position
# bindkey -M viins '^p' history-beginning-search-backward
# bindkey -M vicmd '^p' history-beginning-search-backward
# bindkey -M viins '^n' history-beginning-search-forward
# bindkey -M vicmd '^n' history-beginning-search-forward

#TODO: toggle ones you want
# Use 'cat -v' to obtain the keycodes
# bindkey "^[[2~" overwrite-mode       ## Inser
# bindkey "^[[3~" delete-char          ## Del
# bindkey "^[[7~" beginning-of-line    ## Home
# bindkey "^[[8~" end-of-line          ## End
# bindkey "^[[5~" up-line-or-history   ## PageUp
# bindkey "^[[6~" down-line-or-history ## PageDown
# bindkey "^[[A" up-line-or-search     ## up arrow for back-history-search
# bindkey "^[[B" down-line-or-search   ## down arrow for fwd-history-search
# bindkey "\C-b" backward-word         ## ctrl-b
# bindkey "\C-f" forward-word          ## ctrl-f

# vim insert mode ('vicmd' would be vim command mode)
#Replace the "vi-" style bindings with the non-vi equivalents, which don't care about the insertion point.
#http://www.zsh.org/mla/users/2009/msg00811.html
# bindkey -M viins '^h' backward-delete-char
# bindkey -M viins '^?' backward-delete-char
# bindkey -M vicmd '^r' history-incremental-search-backward
# bindkey '^[[5D' emacs-backward-word
# bindkey '^[[5C' emacs-forward-word
# bindkey -M viins '^w' backward-kill-word
# bindkey -M viins '^u' backward-kill-line

# alt-left, alt-right
# bindkey "\e\e[D" backward-word
# bindkey "\e\e[C" forward-word

# from archlinux zsh wiki
# bindkey "\e[1~" beginning-of-line # Home
# bindkey "\e[4~" end-of-line # End
# bindkey "\e[5~" beginning-of-history # PageUp
# bindkey "\e[6~" end-of-history # PageDown
# bindkey "\e[2~" quoted-insert # Ins
# bindkey "\e[3~" delete-char # Del
# bindkey "\e[5C" forward-word
# bindkey "\eOc" emacs-forward-word
# bindkey "\e[5D" backward-word
# bindkey "\eOd" emacs-backward-word
# bindkey "\e\e[C" forward-word
# bindkey "\e\e[D" backward-word
# bindkey "\e[Z" reverse-menu-complete # Shift+Tab

# bindkey "^[[7~" beginning-of-line #Home key
# bindkey "^[[8~" end-of-line #End key
# bindkey "^[[3~" delete-char #Del key
# bindkey "^[[A" history-beginning-search-backward #Up Arrow
# bindkey "^[[B" history-beginning-search-forward #Down Arrow
# bindkey "^[Oc" forward-word # control + right arrow
# bindkey "^[Od" backward-word # control + left arrow
# bindkey "^H" backward-kill-word # control + backspace
# bindkey "^[[3^" kill-word # control + delete

# enable backspace
# http://docs.cs.byu.edu/index.php/ZSH
# bindkey -M viins ^? backward-delete-char
# bindkey -M viins ^H backward-delete-char

# vi keys when you hit escape, and emacs-ish keys when you don't
# from zsh wiki
# bindkey -v
# bindkey "^P" vi-up-line-or-history
# bindkey "^N" vi-down-line-or-history
# bindkey "^[[1~" vi-beginning-of-line   # Home
# bindkey "^[[4~" vi-end-of-line         # End
# bindkey '^[[2~' beep                   # Insert
# bindkey '^[[3~' delete-char            # Del
# bindkey '^[[5~' vi-backward-blank-word # Page Up
# bindkey '^[[6~' vi-forward-blank-word  # Page Down



echo "\e[1m\e[32mFinished loading bindings.zsh\e[0m"

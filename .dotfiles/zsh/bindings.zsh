# zsh Keybindings
#
######################

# vi mode
#TODO: document
# bindkey -v
# bindkey -e

# use incremental search
#TODO: document
# bindkey '^[[R' history-incremental-search-backward

#TODO: document
# bindkey '^[[3~'  delete-char
# bindkey '^[3;5~' delete-char

# History search with up and down arrow keys
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
# bindkey '^[[E' end-of-line

# Option-Left & Option-Right for moving word-by-word in OS X
bindkey "\e\e[C" vi-forward-word
bindkey "\e\e[D" vi-backward-word

bindkey ' ' magic-space    # history expansion on space

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

#Replace the "vi-" style bindings with the non-vi equivalents, which don't care about the insertion point.
#http://www.zsh.org/mla/users/2009/msg00811.html
# bindkey -M viins '^h' backward-delete-char
# bindkey -M viins '^?' backward-delete-char
# bindkey -M viins '^w' backward-kill-word



echo "\e[1m\e[32mFinished loading bindings.zsh\e[0m"

# History search with up and down arrow keys
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Option-Left + Option-Right for moving word-by-word in OS X
bindkey "\e\e[C" vi-forward-word
bindkey "\e\e[D" vi-backward-word

bindkey ' ' magic-space    # history expansion on space

# homebrew zsh completion TODO: fix this
#source `brew --prefix`/Library/Contributions/brew_zsh_completion.zsh


echo "\e[1m\e[32mFinished loading bindings.zsh\e[0m"

# ZSH Tab Completions
#######################

# cheat completion {{{
if [[ -x $(which cheat) ]]; then
    #completion for cheat
    if [ ! -r ~/.cheat_completion ]; then
        echo "Rebuilding Cheat cache... "
        cheat sheets | egrep '^ ' | awk {'print $1'} > ~/.cheat_completion
    fi
    compctl -K "$(cat ~/.cheat_completion)" cheat
    # complete -W "$(cat ~/.cheat_completion)" cheat
fi;
### end cheat zsh completion
#}}}



# homebrew completion {{{1
# source `brew --prefix`/Library/Contributions/brew_zsh_completion.zsh

# in order for below to work, need to run:
#   mkdir -p ~/.zsh/func
#   ln -s "$(brew --prefix)/Library/Contributions/brew_zsh_completion.zsh" ~/.zsh/func/_brew

# fpath=($HOME/.zsh/func $fpath)
# typeset -U fpath

echo "\e[1m\e[35mFinished loading homebrew completions\e[0m"
### end homebrew zsh completion }}}



# npm completion {{{1
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if complete &>/dev/null; then
  _npm_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _npm_completion npm
elif compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
echo "\e[1m\e[35mFinished loading npm completions\e[0m"
###-end-npm-completion-### }}}


# pip command completion {{{1
function _pip_completion {
    local words cword
    read -Ac words
    read -cn cword
    reply=( $( COMP_WORDS="$words[*]" \
                 COMP_CWORD=$(( cword-1 )) \
                 PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end }}}


# scm_breeze completion {{{1
[ -s "~/.scm_breeze/scm_breeze.sh" ] && . "~/.scm_breeze/scm_breeze.sh"
echo "\e[1m\e[35mFinished loading scm_breeze completions\e[0m"
# end scm_breeze completion }}}


# SSH completion {{{1
#TODO: this was in bash, implement for zsh
# tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
# [ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
# }}}


# Completion on Mac to be /Applications/ aware {{{1
#TODO: not exactly bloody working
# pinched from http://www.iterm2.com/#/section/documentation/escape_codes
# if [ "`uname`" = "Darwin" ]; then
#     compctl -f -x 'p[2]' -s "`/bin/ls -d1 /Applications/*/*.app
#     /Applications/*.app | sed 's|^.*/\([^/]*\)\.app.*|\\1|;s/ /\\\\ /g'`"
#     -- open
#     alias run='open -a'
# fi
### end Completion on Mac to be /Applications/ aware }}}


# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end }}}


# rvm completion {{{1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
echo "\e[1m\e[35mFinished loading rvm completions\e[0m"
### end rvm completion }}}


echo "\e[1m\e[32mFinished loading completions.zsh\e[0m"

# vim: set filetype=zsh set foldmarker={{{,}}}:

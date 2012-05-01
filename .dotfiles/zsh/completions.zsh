# Tab Completions for zsh #
#                         #
###########################



### homebrew zsh completion
source `brew --prefix`/Library/Contributions/brew_zsh_completion.zsh
echo "\e[1m\e[35mFinished loading homebrew completions\e[0m"
### end homebrew zsh completion



### begin-npm-completion ###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

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
###-end-npm-completion-###



### scm_breeze completion ###
[ -s "~/.scm_breeze/scm_breeze.sh" ] && . "~/.scm_breeze/scm_breeze.sh"
echo "\e[1m\e[35mFinished loading scm_breeze completions\e[0m"
### end scm_breeze completion ###



### Completion on Mac to be /Applications/ aware ###
#TODO: not exactly bloody working
# pinched from http://www.iterm2.com/#/section/documentation/escape_codes
# if [ "`uname`" = "Darwin" ]; then
#     compctl -f -x 'p[2]' -s "`/bin/ls -d1 /Applications/*/*.app
#     /Applications/*.app | sed 's|^.*/\([^/]*\)\.app.*|\\1|;s/ /\\\\ /g'`"
#     -- open
#     alias run='open -a'
# fi
### end Completion on Mac to be /Applications/ aware ###



### rvm completion ###
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
### end rvm completion ###


echo "\e[1m\e[32mFinished loading completions.zsh\e[0m"

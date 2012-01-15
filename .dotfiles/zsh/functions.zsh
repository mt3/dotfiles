# from Chris Wanstrath
function pless() { 
    pygmentize $1 | less -r 
}



# search notational velocity notes from command line
# stoled from http://fidlet.com/post/885514801/one-thing-well-a-poor-mans-notational-velocity
function ns {
    ls -c ~/Library/Application\ Support/Notational\ Data | grep -i $1
}



# remove duplicates from my overzealous $PATH
# shows the number of times the path appears first
# TODO remove the occurence count
function mywhere {
    where $1 | uniq -c
}



# Speed up git completion  http://talkings.org/post/5236392664/zsh-and-slow-git-completion
__git_files () { 
    _wanted files expl 'local files' _files 
}



# (f)ind by (n)ame: to find all files containing 'foo' in the name
# usage: fn foo 
function fn() {
    ls **/*$1*
}



function chromium_update {
	if [ -d ~/chromium-dwld ]; then
		echo "removing old chromium-dwld folder..."
		rm -R ~/chromium-dwld
	fi
	echo "creating chromium-dwld folder..."
	
	# dwld chromium and chrome
	echo "dwlding chromium and chrome...\n"
	mkcd ~/chromium-dwld
	wget http://build.chromium.org/buildbot/continuous/mac/LATEST/chrome-mac.zip & chrmiumdwldPID=$!
	wget http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg & chrmdwldPID=$!
	wait $chrmiumdwldPID && wait $chrmdwldPID # wait for both dwld processes to finish before continuing
	growlnotify -m "finished downloading chromium and chrome"
	echo
	
	unzip ./chrome-mac.zip >/dev/null 2>&1 &
	
	# mount Chrome
	open GoogleChrome.dmg & chrpid=$!
	wait $chrpid # wait for mount to finish before continuing
	sleep 10 #HACKED, NEED TO FIX WAIT
	
	# extract the mp3 file necessary for Chromium from Chrome
	echo "\nextracting mp3 plugin"
	chrome_path=/Volumes/Google\ Chrome/Google\ Chrome.app/Contents/Versions
	chrome_version=$(ls $chrome_path)
	cp $chrome_path/$chrome_version/Google\ Chrome\ Framework.framework/Libraries/libffmpegsumo.dylib ~/chromium-dwld/
	
	# extract the pdf file necessary for Chromium from Chrome
	echo "\nextracting pdf plugin"
	#chrome_path=/Volumes/Google\ Chrome/Google\ Chrome.app/Contents/Versions
	#chrome_version=$(ls $chrome_path)
	#cp -R $chrome_path/$chrome_version/Google\ Chrome\ Framework.framework/Internet\ Plug-Ins/PDF.plugin ~/chromium-dwld/
	
	# install the mp3 file necessary for Chromium
	echo "\napplying mp3 and pdf plugins to chromium"
	chromium_path=/Users/mt/chromium-dwld/chrome-mac/Chromium.app/Contents/Versions
	chromium_version=$(ls $chromium_path)
	mkdir $chromium_path/$chromium_version/Chromium\ Framework.framework/Internet\ Plug-Ins
	mv ~/chromium-dwld/libffmpegsumo.dylib $chromium_path/$chromium_version/Chromium\ Framework.framework/Libraries/
	#mv ~/chromium-dwld/PDF.plugin $chromium_path/$chromium_version/Chromium\ Framework.framework/Internet\ Plug-Ins/
	mv /Users/mt/chromium-dwld/chrome-mac/Chromium.app /Users/mt/chromium-dwld/
	
	# eject mounted Chrome dmg
	echo "\nunmounting and cleaning up..."
	hdiutil detach /Volumes/Google\ Chrome & chrpid=$!
	wait $chrpid # wait for unmount to finish before continuing
	sleep 2 #HACKED, NEED TO FIX WAIT
	rm chrome-mac.zip
	rm GoogleChrome.dmg
	rm -R /Users/mt/chromium-dwld/chrome-mac
	cd ~
	
	#TODO: check if chromium is not running, then auto-replace it in Applications folder
	
	growlnotify -m "downloaded and patched chromium" "please move to applications folder."
}


function githist() {
    # use spark to draw commits histogram for the day by an author
    # cribbed from @vrish88
    git log --pretty=format:'%an: %at' --author="n am" |
        awk '{system("date -r "$NF" '+%H'")}' |
        sort |
        uniq -c |
        ruby -e 'puts STDIN.readlines.inject(Hash[Array("00".."23").map{|x| [x,0]}]) {|h, x| h.merge(Hash[*x.split(" ").reverse])}.sort.map(&:last)' |
        spark
}


function letthistory() {
    # Letter frequencies in a text file (stolen from @daveycrockett)
    # $1 is the filename
    cat $1 | 
        awk -vFS="" '{for(i=1;i<=NF;i++){ if($i~/[a-zA-Z]/) { w[tolower($i)]++} } }END{for(i in w) print i,w[i]}' | 
        sort |
        cut -c 3- |
        spark
}


function githist2wks() {
    # commits for last 2 weeks
    for day in $(seq 14 -1 0); do
        git log --before="${day} days" --after="$[${day}+1] days" --format=oneline |
        wc -l
    done | spark
}


function filesizeviz() {
    # Visualize filesize inside a directory(@lemen)
    du -BM * | 
        cut -dM -f1 | 
        spark
}


function wifiqualityviz() {
    # WiFi link quality (@cryptix)
    if [ $(ifconfig wlan0 | grep UP | wc -l) -eq 1 ]
    then
     _linkQual="`iwconfig wlan0 | grep Quality | cut -d'=' -f2 | cut -d' ' -f1 | cut -d'/' -f1`"

     if [ $_linkQual -gt 52 ] # >75% link qual
     then
       _linkSparked=$(spark 1 2 3 4)
     elif [ $_linkQual -gt 35 ] # >50% link qual
     then
       _linkSparked=$(spark 1 2 3 0)
     elif [ $_linkQual -gt 17 ] # 25% link qual
     then
       _linkSparked=$(spark 1 2 0 0)
     elif [ $_linkQual -gt 7 ] # 25% link qual
     then
       _linkSparked=$(spark 1 0 0 0)
     else # < 25%
       _linkSparked=$(spark 0 0 0 0)
     fi

     echo $_linkSparked
    fi
}


function cpuloadviz() {
    # Load average (@tsujigiri)
    echo "$(cat /proc/loadavg | cut -d ' ' -f 1-3) $(egrep -c '^processor' /proc/cpuinfo)00" | sed 's///g' | spark | cut -c -9
}


function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}


function parse_git_branch_and_add_brackets {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}


function git-track {
    CURRENT_BRANCH=$(parse_git_branch)
    git-config branch.$CURRENT_BRANCH.remote $1
    git-config branch.$CURRENT_BRANCH.merge refs/heads/$CURRENT_BRANCH
}


# PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "


# lists all occurences of a command in PATH (eliminates duplicates)
function mywhich() {
	which -a $1 | uniq
}



# all the redundant latex steps wrapped in one function
function texify() {
    if [ -f $1.tex ] ; then
        echo "latexifying and pdfing '$1'.tex"
	    latex $1.tex && color green "\n\n" \
            && bibtex $1.aux && color green "\nDONE BIBTEX\n" \
            && latex $1.tex && color green "\nDONE LATEX\n" \
            && pdflatex $1.tex && color green "\nDONE pdfLATEX\n" 
    else
        color red "'$1' is not a valid file."
        echo "These are in the cwd:"
        valid_files=`ls (*.tex|*.bib)*`
        color green $valid_files
    fi
}



function color() {
# TODO: finish for all the other colors
    if [ "$#" = "2" ] ; then
        case $1 in
            "red")   echo '\e[1m\e[31m'$2'\e[0m' ;;
            "green")    echo '\e[1m\e[32m'$2'\e[0m' ;;
            "gold")    echo '\e[1m\e[33m'$2'\e[0m' ;;
            "blue")   echo '\e[1m\e[34m'$2'\e[0m' ;;
            *)           echo "'$1' is not a valid color" ;;
        esac
    else
        echo "Not enough args for >color<"
    fi
}



function start_agent {
  echo "Initializing new SSH agent..."
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add;
}



# create battery status indicator in right prompt of terminal
function battery_charge {
    echo `$BAT_CHARGE` 2>/dev/null
}



# open current directory (or argument in pathfinder)
pfopen () {
    if [ "$#" = "0" ]
    then
        open -a 'Path Finder' `pwd`
    else
        open -a 'Path Finder' $1
    fi
}



# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
  #ps ${SSH_AGENT_PID} doesn't work under cywgin
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_agent;
  }
else
  start_agent;
fi
# end auto-launch ssh keypairs



# wrap git with hub
function git(){
	hub "$@"
}



# view git diffs in macvim
function git_diff() {
    # --no-ext-diff : to prevent using vimdiff
    # -w : to ignore whitespace
    # -R : to start vim in read-only mode
    # - : to make vim act as a pager
    git diff --no-ext-diff -w "$@" | mvim -R -
}



# Open a manpage in Preview, which can be saved to PDF (stolened from adamv)
pman() {
   man -t "${1}" | open -f -a /Applications/Preview.app
}



# mkdir, cd into it
function mkcd {
    mkdir $1
    cd $1
}



function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}



# good stuff
# pinched from http://github.com/bjeanes/dot-files/blob/master/shell/functions.sh
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1        ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xvf $1        ;;
            *.tbz2)      tar xvjf $1      ;;
            *.tgz)       tar xvzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}



#from adamv yet again
function pgrep {
  local exclude="\.svn|\.git|\.swp|\.coverage|\.pyc|_build"
  find . -maxdepth 1 -mindepth 1 | egrep -v "$exclude" | xargs egrep -lir "$1" | egrep -v "$exclude" | xargs egrep -Hin --color "$1"
}



function osinfo() { 
   x1="$(/usr/bin/sw_vers -productName)"
   x2="$(/usr/bin/sw_vers -productVersion)"
   x3="$(/usr/bin/sw_vers -buildVersion)"
   x4="$(/usr/bin/arch)"
   echo "${x1} - ${x2} - (Build:${x3}) - ${x4}"

   #TODO: finish this for all apps
   installs_to_check = ("/usr/bin/python", "/usr/bin/ruby")
   for x in $installs_to_check; do
       if [[ -e "/usr/bin/python" ]] ; then
            echo `python -V`
        fi
    done
}



function hd_space {
	for x in $(ls ~);
	{
		du -sh $x;
	}
}


# pip zsh command completion
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end



# dwld and archive a set of web pages
function dwld-and-archive-webpages() {
    # unfinished...
    # better to use wget -i fileOfURLs.txt

    for ((i=0; i<100; i++)); do
        wget -q -O outf${i}.html $1
        gzip outf${i}.html
    done
   
}



# dwld webpages that can be incremented and keep the ones that contain certain info
# TODO: unfinished
function dl-webpg-containing-txt(){
    mkcd ~/Downloads/web-dwld-data

    u="http://duckduckgo.com"
    
    for ((nn=0; nn<100; nn++)); do
        wget -q ${u}${nn}.html
    done

}



echo "\e[1m\e[32mFinished loading functions.zsh\e[0m"

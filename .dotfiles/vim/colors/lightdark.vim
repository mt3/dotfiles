" lightdark     (vim colorscheme)

" Preamble: to be at the top of every colorscheme {{{
    set background=light
    highlight clear

    if exists("syntax_on")
        syntax reset
    endif

    " Load the 'macvim' colorscheme TODO: remove this dependency
    runtime macvim.vim

    " Override the name of the base colorscheme with the name of this custom one
    let g:colors_name = "lightdark"
" }}}
" Color Definitions: {{{
	" from sjl/badwolf
	let s:lightgravel = "998f84"
	let s:dress       = "857f78"
	let s:coal        = "857f78"
	let s:orange      = "857f78"
	let s:lime        = "857f78"
	let s:taffy       = "857f78"

    " from https://github.com/DAddYE/tomorrow.vim/blob/master/colors/Tomorrow.vim

    " GUI Base16 Colour Definitions
    let s:gui00 = "2b2b2b"
    let s:gui01 = "3f3f3f"
    let s:gui02 = "636363"
    let s:gui03 = "909090"
    let s:gui04 = "b0b0b0"
    let s:gui05 = "d0d0d0"
    let s:gui06 = "e0e0e0"
    let s:gui07 = "f5f5f5"
    let s:gui08 = "ac4142"
    let s:gui09 = "d28445"
    let s:gui0A = "f4bf75"
    let s:gui0B = "90a959"
    let s:gui0C = "75b5aa"
    let s:gui0D = "6a9fb5"
    let s:gui0E = "aa759f"
    let s:gui0F = "8b415c"

    " Terminal Base16 Colour Definitions
    let s:cterm00 = "00"
    let s:cterm01 = "10"
    let s:cterm02 = "11"
    let s:cterm03 = "12"
    let s:cterm04 = "13"
    let s:cterm05 = "14"
    let s:cterm06 = "15"
    let s:cterm07 = "07"
    let s:cterm08 = "01"
    let s:cterm09 = "08"
    let s:cterm0A = "03"
    let s:cterm0B = "02"
    let s:cterm0C = "06"
    let s:cterm0D = "04"
    let s:cterm0E = "05"
    let s:cterm0F = "09"
" }}}
" Clear colors for items to be changed {{{
    hi clear StatusLine
    hi clear StatusLineNC
    hi clear Comment
    hi clear Todo
    hi clear Cursor
    hi clear iCursor
    hi clear CursorLine
    hi clear CursorColumn
    hi clear Search
    hi clear LineNr
" }}}

" Customizations: {{{
    hi Cursor       guifg=White     guibg=Black     gui=none        ctermbg=241
    hi iCursor      guifg=Gray      guibg=Blue
    hi Insert       guifg=Black     guibg=Blue
    hi CursorLine                   guibg=White     gui=none        term=reverse
    hi CursorColumn guifg=Black     guibg=#333333
    hi ColorColumn  guifg=Black     guibg=#333333
    hi NonText 		guifg=#808080   guibg=#303030   gui=none        ctermfg=244     ctermbg=235

    hi LineNr 		guibg=#a0a3a7   guifg=#ffffff   gui=none        ctermfg=244     ctermbg=232
    hi VertSplit    guifg=#a0a0a0
    hi SignColumn 	guifg=#ffffff   guibg=#bbbbbb   gui=none

    hi StatusLine 	guifg=#e3e3e5   guibg=#444444   gui=italic      ctermfg=253     ctermbg=238     cterm=italic
    " statuslines for windows not in current focus
    hi StatusLineNC guifg=Black     guibg=#444444   gui=none        ctermfg=246     ctermbg=238

    hi Search       NONE            term=underline  guifg=Black     guibg=Yellow
    hi IncSearch    NONE            term=underline  guifg=Black     guibg=LightYellow

    " hi Folded 		guibg=#efffff   guifg=#888888   gui=none        ctermbg=4           ctermfg=248
    " hi Folded 		guifg=#888888   guibg=#f6f9ff   gui=none        ctermbg=4           ctermfg=248
    hi Folded 		guifg=#4099df   guibg=#fafafa   gui=none        ctermbg=4           ctermfg=248
    hi FoldColumn   guifg=#43c3ff   guibg=#f6f6f6                   ctermfg=DarkBlue    ctermbg=LightGrey

    hi Directory	guifg=#f6f3e8   guibg=NONE	    gui=bold        ctermfg=254     cterm=bold
    hi Title		guifg=#f6f3e8   guibg=NONE	    gui=bold        ctermfg=254     cterm=bold
    hi Visual		guifg=Black     guibg=White     gui=none        ctermfg=254     ctermbg=4
    hi VisualNOS	guifg=Black     guibg=White     gui=none        ctermfg=254     ctermbg=4
    hi SpecialKey	guifg=#808080   guibg=#343434   gui=none        ctermfg=244     ctermbg=236
    hi MatchParen   guifg=White     guibg=#cfdfff   gui=bold        term=reverse    ctermbg=LightCyan

    " ctags
    hi Tag   guifg=White     guibg=#cfdfff   gui=bold        term=reverse    ctermbg=LightCyan

    " Pmenu: pop-up menus
    hi Pmenu 		guifg=#ffffff   guibg=#444444   ctermfg=255 ctermbg=238
    hi PmenuSel     ctermfg=Black   ctermbg=Cyan

    " hi DiffAdd
    " hi DiffChange
    " hi DiffDelete
    " hi DiffText
" }}}
" Syntax & Keywords {{{
    " 'Normal' sets default text color and default background color
    hi Normal           guifg=Black         guibg=#eeeeee   gui=none        ctermfg=253     ctermbg=234
    hi String           guifg=#7e8aa2                       gui=none        ctermfg=103
    hi NonText          guifg=#404040                                       ctermfg=8

    " TODO can't set custom font for comments. not possible me thinks
    hi Comment          guifg=#bbbbbb       gui=italic      ctermfg=244     font=Fanwood:h13
    hi Constant 	    guifg=#a186b1       gui=bold        ctermfg=148
    hi Delimiter        guifg=#999999       gui=none
    hi Identifier       guifg=#0080df
    hi Ignore           guifg=bg            gui=none
    hi Keyword		    guifg=#43c3ff       gui=none        ctermfg=103
    hi PreProc          guifg=DarkCyan
    hi SpecialComment   guifg=#b2b2b2       gui=italic      ctermfg=244
    hi Statement 	    guifg=SlateBlue     gui=bold        ctermfg=103
    hi Structure        guifg=#9DEEF2       gui=none
    hi Type             guifg=#6384bc
    hi Typedef          guifg=DarkMagenta

    hi Todo             guifg=Black         guibg=#d82020   gui=italic,bold     term=standout
    " hi Todo         guifg=Black         guibg=#e02020   gui=italic,bold ctermbg=244     ctermfg=Black
" }}}
" Error Messages {{{
    hi SpellErrors      guifg=Red                           gui=underline

    " commandline error messages
    hi ErrorMsg         guifg=#c00000       guibg=NONE
    " hi ErrorMsg       guifg=Red           guibg=NONE
    " hi MoreMsg         guifg=#c00000       guibg=NONE
    " hi ModeMsg         guifg=#c00000       guibg=NONE
    " hi Question         guifg=#c00000       guibg=NONE
    " TODO
    hi WarningMsg       guifg=Red
    " TODO
    hi SpellLocal                           guibg=DarkCyan
" }}}

" Filetypes & Plugins {{{
    " Vim {{{
        " TODO can't set custom font for comments. not possible me thinks
        hi vimCommentString   guifg=#b9b9b9                     ctermfg=244     font=Fanwood:h13
        hi VimCommentTitle    guifg=#898894         gui=bold
        hi vimmapmod       	  guifg=#ff9eb8 		gui=none
        " hi VimMapModKey    guifg=#ff9eb8		    gui=none
        " hi VimNotation    guifg=#ff9eb8		        gui=none
        " hi VimBracket    guifg=#ff9eb8		        gui=none
    " }}}
    " Interesting Words {{{
        hi InterestingWord1     guifg=Black  guibg=#ffa724
        hi InterestingWord2     guifg=Black  guibg=#aeee00
        hi InterestingWord3     guifg=Black  guibg=#ff2c4b
    " }}}
    " ShowMarks {{{
        hi ShowMarksHLl     guifg=#0a9dff    guibg=#1c1b1a
        hi ShowMarksHLu     guifg=#0a9dff    guibg=#1c1b1a
        hi ShowMarksHLo     guifg=#0a9dff    guibg=#1c1b1a
        hi ShowMarksHLm     guifg=#0a9dff    guibg=#1c1b1a
    " }}}
    " Ctrlp {{{

    " }}}
" }}}

" Cterm Colors {{{
    "Black
    "DarkBlue
    "DarkGreen
    "DarkCyan
    "DarkRed
    "DarkMagenta
    "Brown, DarkYellow
    "SeaGreen, SlateBlue, Violet, Purple
    "LightGray, LightGrey, Gray, Grey
    "DarkGray, DarkGrey
    "Blue, LightBlue
    "Green, LightGreen
    "Cyan, LightCyan
    "Red, LightRed
    "Magenta, LightMagenta
    "Yellow, LightYellow
    "White
" }}}
" Xterm Colors {{{
    "
" }}}
" Color Values {{{
    " coloring format is #rrggbb
    "
    "lightblueish=#bfffff
    "babyblue=#43c3ff
    "fadedjeansblue=#6384bc
    "darkblueish=#204fdf
    "lightred=#c80000
" }}}
" Keywords: for highlighting {{{
    " from zenburn:
    " hi Boolean guifg=#dca3a3
    " hi Character guifg=#dca3a3 gui=bold
    " hi Comment guifg=#7f9f7f gui=italic
    " hi Conditional guifg=#f0dfaf gui=bold
    " hi Constant guifg=#dca3a3 gui=bold
    " hi Cursor guifg=#000d18 guibg=#8faf9f gui=bold
    " hi Debug guifg=#bca3a3 gui=bold
    " hi Define guifg=#ffcfaf gui=bold
    " hi Delimiter guifg=#8f8f8f
    " hi DiffAdd guifg=#709080 guibg=#313c36 gui=bold
    " hi DiffChange guibg=#333333
    " hi DiffDelete guifg=#333333 guibg=#464646
    " hi DiffText guifg=#ecbcbc guibg=#41363c gui=bold
    " hi Directory guifg=#9fafaf gui=bold
    " hi ErrorMsg guifg=#80d4aa guibg=#2f2f2f gui=bold
    " hi Exception guifg=#c3bf9f gui=bold
    " hi Float guifg=#c0bed1
    " hi FoldColumn guifg=#93b3a3 guibg=#3f4040
    " hi Folded guifg=#93b3a3 guibg=#3f4040
    " hi Function guifg=#efef8f
    " hi Identifier guifg=#efdcbc
    " hi IncSearch guibg=#f8f893 guifg=#385f38
    " hi Keyword guifg=#f0dfaf gui=bold
    " hi Label guifg=#dfcfaf gui=underline
    " hi Macro guifg=#ffcfaf gui=bold
    " hi ModeMsg guifg=#ffcfaf gui=none
    " hi MoreMsg guifg=#ffffff gui=bold
    " hi Number guifg=#8cd0d3
    " hi Operator guifg=#f0efd0
    " hi PreCondit guifg=#dfaf8f gui=bold
    " hi PreProc guifg=#ffcfaf gui=bold
    " hi Question guifg=#ffffff gui=bold
    " hi Repeat guifg=#ffd7a7 gui=bold
    " hi Search guifg=#ffffe0 guibg=#284f28
    " hi SpecialChar guifg=#dca3a3 gui=bold
    " hi SpecialComment guifg=#82a282 gui=bold
    " hi Special guifg=#cfbfaf
    " hi SpecialKey guifg=#9ece9e
    " hi Statement guifg=#e3ceab gui=none
    " hi StatusLine guifg=#313633 guibg=#ccdc90
    " hi StatusLineNC guifg=#2e3330 guibg=#88b090
    " hi StorageClass guifg=#c3bf9f gui=bold
    " hi String guifg=#cc9393
    " hi Structure guifg=#efefaf gui=bold
    " hi Tag guifg=#e89393 gui=bold
    " hi Title guifg=#efefef gui=bold
    " hi Todo guifg=#dfdfdf guibg=bg gui=bold
    " hi Typedef guifg=#dfe4cf gui=bold
    " hi Type guifg=#dfdfbf gui=bold
    " hi Underlined guifg=#dcdccc gui=underline
    " hi VertSplit guifg=#2e3330 guibg=#688060
    " hi VisualNOS guifg=#333333 guibg=#f18c96 gui=bold,underline
    " hi WarningMsg guifg=#ffffff guibg=#333333 gui=bold
    " hi WildMenu guibg=#2c302d guifg=#cbecd0 gui=underline

    " hi SpellBad guisp=#bc6c4c guifg=#dc8c6c
    " hi SpellCap guisp=#6c6c9c guifg=#8c8cbc
    " hi SpellRare guisp=#bc6c9c guifg=#bc8cbc
    " hi SpellLocal guisp=#7cac7c guifg=#9ccc9c

    " *Comment	any comment

    " *Constant	any constant
    "  String		a string constant: "this is a string"
    "  Character	a character constant: 'c', '\n'
    "  Number		a number constant: 234, 0xff
    "  Boolean	a boolean constant: TRUE, false
    "  Float		a floating point constant: 2.3e10

    " *Identifier	any variable name
    "  Function	function name (also: methods for classes)

    " *Statement	any statement
    "  Conditional	if, then, else, endif, switch, etc.
    "  Repeat		for, do, while, etc.
    "  Label		case, default, etc.
    "  Operator	"sizeof", "+", "*", etc.
    "  Keyword	any other keyword
    "  Exception	try, catch, throw

    " *PreProc	generic Preprocessor
    "  Include	preprocessor #include
    "  Define		preprocessor #define
    "  Macro		same as Define
    "  PreCondit	preprocessor #if, #else, #endif, etc.

    " *Type		int, long, char, etc.
    "  StorageClass	static, register, volatile, etc.
    "  Structure	struct, union, enum, etc.
    "  Typedef	A typedef

    " *Special	any special symbol
    "  SpecialChar	special character in a constant
    "  Tag		you can use CTRL-] on this
    "  Delimiter	character that needs attention
    "  SpecialComment	special things inside a comment
    "  Debug		debugging statements

    " *Underlined	text that stands out, HTML links

    " *Ignore		left blank, hidden  |hl-Ignore|

    " *Error		any erroneous construct

    " *Todo		anything that needs extra attention; mostly the keywords TODO FIXME and XXX
" }}}

" vim: set ft=vim:foldmethod=marker:

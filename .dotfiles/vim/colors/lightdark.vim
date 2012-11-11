" lightdark
"           vim colorscheme
"

" To be at the top of every colorscheme {{{
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

" Color Definitions {{{
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
    hi clear Search
    hi clear StatusLine
" }}}

" Custom Colors {{{
    " hi Cursor       guifg=Black     guibg=#e4e4e4   gui=none    ctermbg=241
    " hi Cursor     guibg=#afdfff   guifg=White     gui=none    ctermbg=241
    hi Cursor       guibg=Black     guifg=White     gui=none    ctermbg=241
    hi iCursor      guifg=Gray      guibg=Blue
    hi Insert       guifg=Black     guibg=Blue
    hi CursorLine   guibg=White     gui=none        term=reverse
    " hi CursorLine   guifg=#0080ff     guibg=White     gui=none    term=reverse
    "hi CursorLine  guifg=#2a2a2a   guibg=#eaeaea   gui=none    term=reverse
    hi CursorColumn guibg=#333333   guifg=NONE
    hi NonText 		guifg=#808080   guibg=#303030   gui=none ctermfg=244 ctermbg=235
    hi LineNr 		guifg=#dadada   guibg=#999999   gui=none ctermfg=244 ctermbg=232
    hi VertSplit    guifg=#a0a0a0

    " statuslines for windows not in current focus
    hi StatusLineNC guifg=Black     guibg=#444444   gui=none ctermfg=246 ctermbg=238
    hi StatusLine 	guifg=#e3e3e5   guibg=#444444   gui=italic ctermfg=253 ctermbg=238 cterm=italic

    hi Search       NONE term=underline guifg=Black guibg=Yellow
    hi IncSearch    NONE term=underline guifg=Black guibg=LightYellow

    hi Folded 		guifg=#5f8fff   guibg=White     gui=none            ctermbg=4           ctermfg=248
    hi FoldColumn   guifg=#43c3ff   guibg=#f6f6f6   ctermfg=DarkBlue    ctermbg=LightGrey
    "hi link FoldColumn Folded

    hi Title		guifg=#f6f3e8   guibg=NONE	    gui=bold ctermfg=254 cterm=bold
    hi Visual		guifg=Black     guibg=White     gui=none ctermfg=254 ctermbg=4
    hi SpecialKey	guifg=#808080   guibg=#343434   gui=none ctermfg=244 ctermbg=236

    " Pmenu is for pop-up menus
    hi Pmenu 		guifg=#ffffff   guibg=#444444   ctermfg=255 ctermbg=238
    hi PmenuSel     ctermfg=Black   ctermbg=LightCyan
    hi MatchParen   term=reverse    guifg=White     guibg=#cfdfff gui=bold ctermbg=LightCyan
" }}}
" Syntax & Keywords {{{
    hi Normal       guifg=Black         guibg=#f4f4f4   gui=none        ctermfg=253     ctermbg=234
    hi String       guifg=#7e8aa2       gui=none        ctermfg=103
    hi NonText      guifg=#404040       ctermfg=8
    hi Comment      guifg=#b9b9b9       gui=italic      ctermfg=244     font=Fanwood:h13
    hi vimCommentString                 guifg=#b9b9b9   ctermfg=244     font=Fanwood:h13

    hi Constant 	guifg=#8186b1       gui=italic      ctermfg=148
    hi Keyword		guifg=#43c3ff       gui=none        ctermfg=103
    hi Statement 	guifg=SlateBlue     gui=none        ctermfg=103
    hi Identifier   guifg=#0080df
    hi PreProc      guifg=DarkCyan
    hi Type         guifg=DarkMagenta

    hi Todo         guifg=Black         guibg=#e02020   gui=italic,bold
    " hi Todo         guifg=Black         guibg=#e02020   gui=italic,bold ctermbg=244     ctermfg=Black
" }}}
" Error Messages {{{
    hi SpellErrors guifg=Red gui=underline

    " commandline error messages
    hi ErrorMsg guifg=#c00000 guibg=NONE
    " hi ErrorMsg guifg=Red guibg=NONE
    " TODO
    hi WarningMsg guifg=Red
    " TODO
    hi SpellLocal guibg=DarkCyan
" }}}

" Filetype-specific {{{
    " Vim {{{
        hi VimCommentTitle    guifg=#998f84         gui=bold
        hi vimmapmod       	  guifg=#ff9eb8 		gui=none
        hi VimMapModKey    guifg=#ff9eb8		    gui=none
        hi VimNotation    guifg=#ff9eb8		        gui=none
        hi VimBracket    guifg=#ff9eb8		        gui=none
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

" vim: set ft=vim:foldmethod=marker:

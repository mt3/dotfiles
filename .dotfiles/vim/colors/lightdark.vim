" These lines are suggested to be at the top of every colorscheme {{{
    set background=light
    highlight clear

    if exists("syntax_on")
        syntax reset
    endif

    "Load the 'macvim' colorscheme TODO: remove this dependency
    runtime macvim.vim

    " Override the name of the base colorscheme with the name of this custom one
    let g:colors_name = "lightdark"
" }}}


" Clear the colors for any items that you don't like {{{
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


" Set up your new & improved colors {{{
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
    hi LineNr 		guifg=#dadada   guibg=#000000   gui=none ctermfg=244 ctermbg=232
    hi VertSplit    guifg=#a0a0a0

    " statuslines for windows not in current focus
    hi StatusLineNC guifg=Black     guibg=#444444   gui=none ctermfg=246 ctermbg=238
    hi StatusLine 	guifg=#e3e3e5   guibg=#444444   gui=italic ctermfg=253 ctermbg=238 cterm=italic

    hi Search       NONE term=underline guifg=Black guibg=Yellow
    hi IncSearch    NONE term=underline guifg=Black guibg=LightYellow

    hi Folded 		guifg=#aaddff   guibg=#898989     gui=none            ctermbg=4           ctermfg=248
    hi FoldColumn   guifg=Blue      guibg=#f6f6f6   ctermfg=DarkBlue    ctermbg=LightGrey
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
    hi Normal       guifg=Black         guibg=#f4f4f4   gui=none        ctermfg=253 ctermbg=234
    hi String       guifg=#7e8aa2       gui=none        ctermfg=103
    hi NonText      guifg=#404040       ctermfg=8
    hi Comment      guifg=#b9b9b9       gui=italic      ctermfg=244     font=Fanwood:h13
    hi vimCommentString                 guifg=#b9b9b9   ctermfg=244     font=Fanwood:h13


    hi Constant 	guifg=#8186b1       gui=italic      ctermfg=148
    hi Keyword		guifg=SlateBlue     gui=none        ctermfg=103
    hi Statement 	guifg=DarkBlue      gui=none        ctermfg=103
    hi Identifier   guifg=#0080df
    hi PreProc      guifg=DarkCyan
    hi Type         guifg=DarkMagenta

    hi Todo         guifg=Black         guibg=#e02020   gui=italic,bold
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
    "coloring format is #rrggbb
    "lightblueish=#bfffff
    "darkblueish=#204fdf
    "lightred=#c80000
" }}}


" vim: set ft=vim:foldmethod=marker:

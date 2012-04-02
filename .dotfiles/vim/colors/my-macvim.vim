" These lines are suggested to be at the top of every colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    set background=light
    highlight clear

    if exists("syntax_on")
        syntax reset
    endif

    "Load the 'macvim' colorscheme
    runtime macvim.vim

    " Override the name of the base colorscheme with the name of this custom one
    let g:colors_name = "my-macvim"


" Clear the colors for any items that you don't like
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    hi clear StatusLine
    hi clear StatusLineNC
    hi clear Comment
    hi clear Todo 
    hi clear Cursor
    hi clear iCursor
    hi clear CursorLine
    hi clear Search
    hi clear StatusLine

" Set up your new & improved colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    hi Cursor       guifg=NONE      guibg=#dddddd gui=reverse ctermbg=241
    hi iCursor      guifg=Gray guibg=Blue
    hi Insert       guifg=Black guibg=Blue
    hi CursorLine   guibg=#e0e0e0 term=reverse
    hi CursorColumn guibg=#333333 guifg=NONE
    hi NonText 		guifg=#808080 guibg=#303030 gui=none ctermfg=244 ctermbg=235
    hi LineNr 		guifg=#b0b0b0 guibg=#000000 gui=none ctermfg=244 ctermbg=232
    "hi LineNr ctermbg=White ctermfg=Gray guibg=#f6f6f6 guifg=DarkGray
    "hi LineNr 		guifg=#AFAFAF guibg=#f6f6f6 gui=none ctermfg=244 ctermbg=232
    hi VertSplit guifg=#a0a0a0
    "hi StatusLine guifg=#000000 guibg=#dddddd
    "hi StatusLine guifg=White guibg=Black  gui=italic ctermfg=253 ctermbg=238 cterm=italic
    hi StatusLine 	guifg=#e3e3e5 guibg=#444444 gui=italic ctermfg=253 ctermbg=238 cterm=italic
    " status lines of not-currently focused windows
    hi StatusLineNC guifg=Black guibg=#444444 gui=none ctermfg=246 ctermbg=238

    " hi Search NONE gui=underline term=underline guifg=Black guibg=Yellow
    hi Search NONE term=underline guifg=Black guibg=Yellow
    hi IncSearch NONE term=underline guifg=Black guibg=LightYellow

    "hi Folded ctermfg=Red ctermbg=LightGrey guifg=LightBlue guibg=#ffffff
    hi FoldColumn ctermfg=DarkBlue ctermbg=LightGrey guifg=Blue guibg=#f6f6f6
    "hi link FoldColumn Folded
    hi Folded 		guibg=#384048 guifg=White gui=none ctermbg=4 ctermfg=248

    hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold ctermfg=254 cterm=bold
    hi Visual		guifg=Black guibg=LightBlue gui=none ctermfg=254 ctermbg=4
    hi SpecialKey	guifg=#808080 guibg=#343434 gui=none ctermfg=244 ctermbg=236

    " Pmenu is for pop-up menus
    hi Pmenu 		guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
    hi PmenuSel ctermfg=Black ctermbg=LightCyan
    hi MatchParen term=reverse ctermbg=LightCyan guibg=LightCyan gui=bold
    " hi MatchParen guifg=#2f2f2f guibg=#d0ffc0 gui=bold ctermfg=157 ctermbg=237 cterm=bold


" Syntax & Keywords
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    " set the main window bg and fg colors
    hi Normal       guifg=Black         guibg=#efefea gui=none ctermfg=253 ctermbg=234
    hi NonText      guifg=#404040       ctermfg=8
    hi Constant 	guifg=#8186b1       gui=italic ctermfg=148
    "hi Constant 	guifg=#7e8aa2       gui=none ctermfg=103
    hi String       guifg=#7e8aa2       gui=none ctermfg=103
    hi Keyword		guifg=Blue          gui=none ctermfg=103
    hi Statement 	guifg=DarkBlue      gui=none ctermfg=103
    hi Identifier   guifg=DarkCyan
    hi PreProc      guifg=SlateBlue
    hi Type         guifg=DarkMagenta
    hi Comment      guifg=#c2c2c2       gui=italic ctermfg=244
    hi Todo         guifg=White         guibg=#c80000 gui=italic


" Error Messages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    hi SpellErrors guifg=Red gui=underline

    " commandline error messages
    hi ErrorMsg guifg=Red guibg=NONE
    " TODO
    hi WarningMsg guifg=Red
    " TODO
    hi SpellLocal guibg=DarkCyan


" Cterm Colors
"""""""""""""""""""""""""""""""
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


" Xterm Colors
"""""""""""""""""""""""""""""""
"

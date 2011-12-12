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
    hi Cursor guibg=White gui=reverse
    hi iCursor guifg=White guibg=Blue
    hi Insert guifg=White guibg=Blue
    hi CursorLine guibg=#ffffff term=reverse
    hi CursorColumn guibg=#333333 guifg=NONE
    hi LineNr ctermbg=White ctermfg=Gray guibg=#f6f6f6 guifg=DarkGray
    hi StatusLine guifg=#000000 guibg=#dddddd
    " status lines of not-currently focused windows
    hi StatusLineNC guifg=#aaaaaa guibg=#dddddd
    hi VertSplit guifg=#f0f0f0

    " hi Search NONE gui=underline term=underline guifg=Black guibg=Yellow
    hi Search NONE term=underline guifg=Black guibg=Yellow
    hi IncSearch NONE term=underline guifg=Black guibg=LightYellow

    hi Folded ctermfg=Red ctermbg=LightGrey guifg=LightBlue guibg=#ffffff
    hi FoldColumn ctermfg=DarkBlue ctermbg=LightGrey guifg=Blue guibg=#f6f6f6
    "hi link FoldColumn Folded

    " Pmenu is for pop-up menus
    hi PmenuSel ctermfg=Black ctermbg=LightCyan
    hi MatchParen term=reverse ctermbg=LightCyan guibg=LightCyan


" Syntax & Keywords
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    " set the main window bg and fg colors
    hi Normal guifg=Black guibg=White
    hi NonText guifg=#404040 ctermfg=8
    hi Constant guifg=Blue
    hi String guifg=DarkGray
    " hi Identifier guifg=LightGreen
    hi Statement guifg=DarkGreen
    " hi PreProc guifg=Blue
    hi Type guifg=DarkCyan
    hi Comment guifg=LightBlue
    " hi Todo guifg=DarkRed guibg=LightCyan
    hi Todo guifg=Red


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

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


" Set up your new & improved colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    "hi StatusLine guifg=black guibg=white
    "hi StatusLineNC guifg=LightCyan guibg=blue gui=bold
    hi VertSplit guifg=#f0f0f0
    
    hi Cursor guibg=White gui=reverse
    hi iCursor guifg=White guibg=Blue
    hi Insert guifg=White guibg=Blue
    hi CursorLine guibg=#fafafa
    hi CursorColumn guibg=#333333 guifg=NONE
    hi LineNr ctermbg=White ctermfg=Gray guibg=#f6f6f6 guifg=DarkGray
    hi NonText guifg=#404040 ctermfg=8

    "hi Comment guifg=LightBlue term=bold gui=italic
    hi Comment guifg=Gray
    hi Todo guifg=DarkGray guibg=LightMagenta
    hi Search NONE gui=underline term=underline guifg=Black guibg=Yellow
    hi IncSearch NONE gui=underline term=underline guifg=Black guibg=LightYellow

    hi Folded ctermfg=Red ctermbg=LightGrey guifg=LightBlue guibg=#f6f6f6
    hi FoldColumn ctermfg=DarkBlue ctermbg=LightGrey guifg=Blue guibg=#f6f6f6
    "hi link FoldColumn Folded

    " Pmenu is for pop-up menus
    hi PmenuSel ctermfg=Black ctermbg=LightCyan
    hi MatchParen term=reverse ctermbg=LightCyan guibg=LightCyan


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


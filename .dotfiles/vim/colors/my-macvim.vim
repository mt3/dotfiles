"these lines are suggested to be at the top of every colorscheme
set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif

"Load the 'macvim' colorscheme
runtime macvim.vim

"Override the name of the base colorscheme with the name of this custom one
let g:colors_name = "my-macvim"

"Clear the colors for any items that you don't like
hi clear StatusLine
hi clear StatusLineNC
highlight clear Comment
highlight clear Todo 
highlight clear Cursor
highlight clear iCursor
highlight clear CursorLine
highlight clear Search

"Set up your new & improved colors
"hi StatusLine guifg=black guibg=white
"hi StatusLineNC guifg=LightCyan guibg=blue gui=bold
highlight Comment guifg=LightBlue term=bold gui=italic
highlight Todo guifg=DarkGray guibg=LightMagenta
highlight Cursor guibg=#cccccc
highlight iCursor guifg=White guibg=Blue
highlight Insert guifg=White guibg=Blue
highlight CursorLine guibg=#fafafa
highlight CursorColumn guibg=#333333 guifg=NONE
highlight NonText guifg=#404040 ctermfg=8

hi Search NONE gui=underline term=underline guifg=Black guibg=Yellow
hi IncSearch NONE gui=underline term=underline guifg=Black guibg=LightYellow

hi Folded ctermfg=Red ctermbg=LightGrey guifg=LightBlue guibg=DarkGrey
hi FoldColumn ctermfg=DarkBlue ctermbg=LightGrey guifg=DarkBlue guibg=LightGrey
"high link FoldColumn Folded

"hi PmenuSel ctermfg=Black ctermbg=LightCyan
"hi MatchParen term=reverse ctermbg=LightCyan guibg=LightCyan
hi SpellErrors guifg=Red gui=underline

" for commandline error messages
highlight ErrorMsg guifg=Red guibg=NONE
highlight WarningMsg guifg=Red
highlight SpellLocal guibg=DarkCyan
hi LineNr ctermbg=White ctermfg=Gray guibg=#f6f6f6 guifg=DarkGray
hi SpellLocal guibg=DarkGreen
hi VertSplit guifg=#f6f6f6

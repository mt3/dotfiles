"these lines are suggested to be at the top of every colorscheme
hi clear
if exists("syntax_on")
  syntax reset
endif

"Load the 'macvim' colorscheme
runtime macvim.vim

"Override the name of the base colorscheme with the name of this custom one
let g:colors_name = "my-macvim"

"Clear the colors for any items that you don't like
"hi clear StatusLine
"hi clear StatusLineNC
highlight clear Comment
highlight clear Todo 
highlight clear Cursor
highlight clear CursorLine

"Set up your new & improved colors
"hi StatusLine guifg=black guibg=white
"hi StatusLineNC guifg=LightCyan guibg=blue gui=bold
highlight Comment guifg=Gray
highlight Todo guifg=Black guibg=LightMagenta
highlight Cursor guibg=#dcdcdc
highlight CursorLine guibg=#fafafa

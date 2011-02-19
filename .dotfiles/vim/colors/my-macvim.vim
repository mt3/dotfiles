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

"Set up your new & improved colors
"hi StatusLine guifg=black guibg=white
"hi StatusLineNC guifg=LightCyan guibg=blue gui=bold
highlight Comment guifg=Lightgray
highlight Todo guibg=White guifg=Lightgray

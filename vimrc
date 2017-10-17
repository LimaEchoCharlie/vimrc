colorscheme slate

" set mapleader to ,
let mapleader=","

" turn on syntax highlighting by default
syntax on

" make "tab" insert indents instead of tabs at the beginning of a line
"set smarttab

set noswapfile

set autoindent

" writes the content of the file automatically if you call :make
set autowrite

" Turn on autocomments
set formatoptions+=c formatoptions+=r formatoptions+=o

execute pathogen#infect()

filetype plugin indent on

" use arrows to cycle through buffers
map <silent> <Right> :bnext <CR>
map <silent> <Left> :bprev <CR>

" use leader arrows to cycle through jumps
map <silent> <leader><Right> :<c-i> <CR>
map <silent> <leader><Left> :<c-o> <CR>


" save backup files elsewhere

"set backupdir=~/vimtmp,.
"set directory=~/vimtmp,.
"

"""""""""""""""""""
" vim-go settings "
"""""""""""""""""""

" show a single tab as 4 spaces:
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" extra syntax highlighing 
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1

" use goimports instead of gofmt
let g:go_fmt_command = "goimports"

" run metalinter
let g:go_metalinter_autosave = 1


""""""""""""""""""""""
" ultiSnips settings "
""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

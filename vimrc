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

" always display the status line always
set laststatus=2
" decrease the update time of the status line
set updatetime=150

" Turn on autocomments
set formatoptions+=c formatoptions+=r formatoptions+=o

execute pathogen#infect()

filetype plugin indent on

" map redo to leader u
map <silent> <leader>u <c-r> <CR>

" use arrows to cycle through buffers
map <silent> <Right> :bnext <CR>
map <silent> <Left> :bprev <CR>

" use leader arrows to cycle through jumps
map <silent> <leader><Right> :<c-i> <CR>
map <silent> <leader><Left> :<c-o> <CR>

" set color column to DarkOrange
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=208 

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
autocmd FileType go nmap <Leader><space> :GoDeclsDir <CR>

" extra syntax highlighing 
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1

" use goimports instead of gofmt
let g:go_fmt_command = "goimports"

" run metalinter on saving
let g:go_metalinter_autosave = 1
"
let g:go_metalinter_enabled= ['aligncheck', 'deadcode', 'dupl', 'errcheck', 'gas', 'goconst', 'gocyclo', 'goimports', 'golint', 'gosimple', 'gotypex', 'ineffassign', 'interfacer', 'lll', 'megacheck', 'misspell', 'safesql', 'staticcheck', 'structcheck', 'unconvert', 'unparam', 'unused', 'varcheck', 'vet'] 
" note: removed gotype

" turn on identifier resolution
let g:go_auto_type_info = 1

" automatically see all matching identifiers under the cursor
" let g:go_auto_sameids = 1 " currently not working


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

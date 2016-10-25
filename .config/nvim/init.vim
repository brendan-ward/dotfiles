let g:python_host_prog='/Library/Frameworks/Python.framework/Versions/3.5/bin/python3'

let g:vim_markdown_folding_disabled = 1
let vim_markdown_preview_github=1

" for go, make all lists quickfix instead
let g:go_list_type = "quickfix"
" on save format and cleanup imports
let g:go_fmt_command = "goimports"

nnoremap ; :

set autowrite
set nocompatible
filetype off

" show line numbers
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=236


call plug#begin("~/.nvim/bundle")
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'elzr/vim-json'
"Plug 'unblevable/quick-scope'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()

:let mapleader = "\<Space>"


" from: https://github.com/fatih/dotfiles/blob/master/vimrc
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
autocmd BufNewFile,BufRead *.md setlocal noet ts=4 sw=4

autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 


" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" Helpers for go quickfix errors
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

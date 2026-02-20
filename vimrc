" Basic settings
set number
set relativenumber
set nowrap
set cursorline
set scrolloff=8
set signcolumn=yes
set mouse=a
set visualbell
set ruler
set wildmenu
set wildignorecase
set noerrorbells t_vb=
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamed
set clipboard=unnamedplus
" Indentation
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" File settings
syntax enable
set fileformat=unix
set encoding=UTF-8

" Python specific settings
augroup python_settings
    autocmd!
    autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
augroup END

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'tomasiser/vim-code-dark'
call plug#end()

" Colorscheme
set termguicolors
set background=dark
let g:codedark_conservative = 0
colorscheme codedark

" Lightline setup

"set noshowmode
"set laststatus=2
"
"let g:lightline = {
"      \ 'colorscheme': 'gruvbox',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ }
"
"" Personalizzazione colori per la modalità
"let g:lightline.mode_map = {
"      \ 'normal': 'NORMAL',
"      \ 'insert': 'INSERT',
"      \ 'visual': 'VISUAL',
"      \ 'replace': 'REPLACE',
"      \ 'command': 'COMMAND'
"      \ }
"
"let g:lightline.mode_colors = {
"      \ 'normal': 'blue',
"      \ 'insert': 'green',
"      \ 'visual': 'purple',
"      \ 'replace': 'red',
"      \ 'command': 'orange'
"      \ }
"      
"let g:lightline = {
"      \ 'colorscheme': 'gruvbox',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ }
      
" Shortcuts
" Toggle NERDTree
nnoremap <C-b> :NERDTreeToggle<CR>
inoremap <C-b> <Esc>:NERDTreeToggle<CR>a
vnoremap <C-b> <Esc>:NERDTreeToggle<CR>gv

" fzf
nnoremap <C-p> :Files<CR>
inoremap <C-p> <Esc>:Files<CR>a
vnoremap <C-p> <Esc>:Files<CR>gv

nnoremap <C-u> :Buffers<CR>
inoremap <C-u> <Esc>:Buffers<CR>a
vnoremap <C-u> <Esc>:Buffers<CR>gv

nnoremap <C-l> :Lines<CR>
inoremap <C-l> <Esc>:Lines<CR>a
vnoremap <C-l> <Esc>:Lines<CR>gv

nnoremap <C-f> :Rg<Space>
inoremap <C-f> <Esc>:Rg<Space>a
vnoremap <C-f> <Esc>:Rg<Space>gv

" Close buffer / window
nnoremap <C-w> :q<CR>
inoremap <C-w> <Esc>:q<CR>
vnoremap <C-w> <Esc>:q<CR>

" Save file
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
vnoremap <C-s> <Esc>:w<CR>gv

" Undo
nnoremap <C-z> u
inoremap <C-z> <Esc>u
vnoremap <C-z> u

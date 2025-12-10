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
call plug#end()

" Colorscheme
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Lightline setup

set noshowmode
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }

" Personalizzazione colori per la modalità
let g:lightline.mode_map = {
      \ 'normal': 'NORMAL',
      \ 'insert': 'INSERT',
      \ 'visual': 'VISUAL',
      \ 'replace': 'REPLACE',
      \ 'command': 'COMMAND'
      \ }

let g:lightline.mode_colors = {
      \ 'normal': 'blue',
      \ 'insert': 'green',
      \ 'visual': 'purple',
      \ 'replace': 'red',
      \ 'command': 'orange'
      \ }
      
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }
      
" Shortcuts
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-u> :Buffers<CR>
nnoremap <C-l> :Lines<CR>
nnoremap <C-f> :Rg<Space>

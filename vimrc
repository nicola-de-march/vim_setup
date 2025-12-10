" Smart indent with {}
set autoindent
set smartindent

set number " Line number "
set cursorline

syntax enable

set fileformat=unix
set encoding=UTF-8

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |

set tabstop=2 " Tab size
set shiftwidth=2

set mouse=a

" Disable ding sound on error, flashes cursor instead:"
set visualbell 
"Insert line number and columns
set ruler

" Shows a auto complete menu when you are typing a command "
set wildmenu
set wildignorecase " ignore case for auto complete
	



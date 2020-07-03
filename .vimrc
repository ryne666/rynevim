"显示行号
set nu

"vim-plug
"---------------------------------------------------------
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"vim-startify
Plug 'mhinz/vim-startify'
"nerdtree
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

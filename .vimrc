"显示行号
set nu
"文件类型侦测
syntax on



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
"ultisnips
Plug 'SirVer/ultisnips'
"vim-snippets
Plug 'honza/vim-snippets'
"vimtex
Plug 'lervag/vimtex'

" Initialize plugin system
call plug#end()

"vimtex配置
let g:tex_flavor= 'latex' 
"使vimtex默认xelatex为编译器
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
"使vimtex默认zathura为pdf阅读器
let g:vimtex_view_method= 'zathura'
"设置可以看到编译提示
let g:vimtex_quickfix_mode=1
"最后两行开启自动隐藏功能,开启了这个功能，除了你光标所在的那一行之外，文本里夹杂的LaTeX代码就都会隐藏或者替换成其他符号
set conceallevel=1
let g:tex_conceal= 'abdmg'



"ultisnips配置
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"自动加文件开头
autocmd BufNewFile *.py,*.sh, exec ":call SetTitle()"
let $author_name = "Ryne"
let $author_email = "xxxx@xxx.xx"
func SetTitle()
if &filetype == 'sh'
call append(1, "\#!/bin/bash")
call setline(line("."),"\###################################################################")
call append(line(".")+1, "\# File Name: ".expand("%"))
call append(line(".")+2, "\# Author: ".$author_name)
call append(line(".")+3, "\# mail: ".$author_email)
call append(line(".")+4, "\# Created Time: ".strftime("%c"))
call append(line(".")+5, "\#==================================================================")
call append(line(".")+6, "")
else
call setline(1, "\#!/usr/bin/env python3")
call append(line("."), "\#-*-coding:UTF-8-*-")
call append(line(".")+1,"\###################################################################")
call append(line(".")+2, "\# File Name: ".expand("%"))
call append(line(".")+3, "\# Author: ".$author_name)
call append(line(".")+4, "\# mail: ".$author_email)
call append(line(".")+5, "\# Created Time: ".strftime("%c"))
call append(line(".")+6, "\#==================================================================")
call append(line(".")+7, "")
endif
endfunc

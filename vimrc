syntax enable
colorscheme monokai
set tabstop=4
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set hlsearch
set foldmethod=syntax
set tags=tags;$HOME
set number

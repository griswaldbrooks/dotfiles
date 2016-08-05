syntax enable
colorscheme monokai

" Tab settings.
set tabstop=4
set shiftwidth=4
set expandtab

" Search highligting.
set hlsearch

" Autocomplete.
set wildmode=longest,list
" Code folding.
set foldmethod=syntax

" Ctags.
set tags=tags;$HOME
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Enable line numbers.
set number

" Explorer mode settings
let g:netrw_liststyle=3

" vim-plug plugins.
call plug#begin('~/.vim/plugged')

" Linter.
Plug 'https://github.com/scrooloose/syntastic.git'

call plug#end()

" Syntastic Settings.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_cpplint_exec = "cpplint"
let g:syntastic_cpp_checkers = ['cpplint']

" Map the Ctrl-S and F2 keys for saving.
" Ctrl-S doesn't work because of http://vim.wikia.com/wiki/Saving_a_file
" which can be mitiga.ted by putting
" ```stty -ixon```
" in .profile or .bashrc
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <c-o><F2>

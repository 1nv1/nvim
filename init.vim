call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/vim-easy-align' 
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()
colorscheme dracula
set number relativenumber
set nu rnu
" Identation
set autoindent expandtab tabstop=2 shiftwidth=2

let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>ls :ls<CR>

" Remap j + j as escape key
imap jj <Esc> 

set signcolumn=auto:1 " Trys to force signcolumn to width 1
highlight clear SignColumn " makes signcolumn trasparent 

" Git Gutter 
set updatetime=100
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_removed_first_line = '┃'
let g:gitgutter_sign_modified_removed = '┃'
let g:gitgutter_sign_allow_clobber = 2
highlight GitGutterAdd    guifg=#00ffff ctermfg=4
highlight GitGutterChange guifg=#ffff00 ctermfg=3
highlight GitGutterDelete guifg=#ff00ff ctermfg=1

" Nerd Tree
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Align GitHub-flavored Markdown tables
vmap <leader><Bar> :EasyAlign *<Bar><Enter>

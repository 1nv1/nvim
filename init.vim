call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/vim-easy-align' 
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mbbill/undotree'
Plug 'tribela/vim-transparent'
Plug 'folke/zen-mode.nvim'
Plug 'Exafunction/codeium.vim'
call plug#end()
colorscheme dracula
set number relativenumber
set nu rnu
" Identation
set autoindent expandtab tabstop=2 shiftwidth=2

let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>ls :ls<CR>

nnoremap <F5> :UndotreeToggle<CR>

" Remap j + j as escape key
imap jj <Esc> 

set signcolumn=auto:1 " Trys to force signcolumn to width 1
highlight clear SignColumn " makes signcolumn trasparent 

" Git Gutter 
set updatetime=500
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_removed_first_line = '┃'
let g:gitgutter_sign_modified_removed = '┃'
let g:gitgutter_sign_allow_clobber = 2
highlight GitGutterAdd    guifg=#00ffff ctermfg=4
highlight GitGutterChange guifg=#ffff00 ctermfg=3
highlight GitGutterDelete guifg=#ff00ff ctermfg=1

" ZenMode shortcuts
nmap <Leader>z :ZenMode<CR>

" Nerd Tree
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Open the current folder
nnoremap <expr> <leader>e ':edit ' . expand('%:h')

" Align GitHub-flavored Markdown tables
vmap <leader><Bar> :EasyAlign *<Bar><Enter>

" Use persistent history.
if !isdirectory("/tmp/.vim-undo-dir") 
  call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

lua << EOF
vim.keymap.set('i', '<tab>', function ()
  return vim.fn['codeium#Accept']()
end, { expr = true })
EOF

syntax on
filetype on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler

" Plugins
call plug#begin()
" TSX / JS / TS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <silent> <C-f> :Files<CR>

colorscheme peachpuff
highlight Comment ctermfg=green

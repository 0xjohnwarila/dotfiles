syntax on
filetype on
set tabstop=4
set autoindent
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab
set ai
set bg=dark
set number
set hlsearch
set ruler
set modeline

set wildignore+=*.DS_Store
set wildignore+=*.pyc
set wildmenu

set display+=uhex " Show unprintable char as hex
set title
set showcmd
set showmatch


" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red

" Hline
augroup colorcolumn
    autocmd!
    if exists('+colorcolumn')
        set colorcolumn=121
    else
        autocmd BufWinEnter * let w:m2 = matchadd('ErrorMsg', '\%>80v.\+', -1)
    endif
augroup END

" Plugins
call plug#begin()
" TSX / JS / TS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" C++
Plug 'bfrg/vim-cpp-modern'

" Solidity
Plug 'tomlion/vim-solidity'

Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

nnoremap <silent> <C-f> :Files<CR>

" colorscheme peachpuff
" let g:alduin_Shout_Become_Ethereal = 1
" let g:alduin_Shout_Dragon_Aspect = 1
" let g:alduin_Shout_Fire_Breath = 1
" let g:alduin_Shout_Aura_Whisper = 1
" colorscheme alduin
"
colorscheme peachpuff
highlight Comment ctermfg=green

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1

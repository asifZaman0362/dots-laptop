set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible
set cursorline
set nobackup
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=500

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.dat,*.pdf

" Plugins ----------------------------

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
call plug#end()

" Colors -----------------------------

set background="dark"
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_theme="dark"
let g:gruvbox_italic=1
let g:gruvbox_bold=1
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
let g:gruvbox_italicize_comments=1
let g:grubbox_italicize_strings=1
"let g:gruvbox_improved_strings=1
autocmd vimenter * ++nested colorscheme gruvbox

" Mappings ---------------------------
let mapleader='\\'
noremap <space> :
noremap o o<esc>i
noremap O O<esc>
noremap Y y$
noremap <f5> :w <CR>:!clear <CR>:!python % <CR>
noremap <s-j> ddp
noremap <s-k> ddkkp
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
command Q exit
noremap <s-tab> :NERDTreeToggle<cr>

let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$']
noremap <c-t> :vnew
let g:airline_theme="base16_gruvbox_dark_hard"
let g:airline_powerline_fonts=1
set fillchars+=vert:\▏
highlight NonText ctermfg=black

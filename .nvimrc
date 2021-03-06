syntax on
set number
set cursorline
set nowrap
set showmatch
set nobackup
set hlsearch
set smartcase
set ignorecase
set showcmd
set history=500
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.jpeg,*.dat,*.pdf

set autoindent
set tabstop=4
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set expandtab

let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
"let g:kimbox_transparent_background = 1
set ruler
"set rtp+=/usr/share/powerline/bindings/vim
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'dense-analysis/ale'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'lmburns/kimbox'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

lua <<EOF
require("kimbox").setup({
    transparent = true,
    allow_bold = true,
    allow_italic = true,
    allow_underline = true,
    allow_undercurl = true,
    allow_reverse = false
})
require("kimbox").colorscheme()
EOF

let mapleader='\\'
noremap <space> :
noremap o o<esc>i
noremap O O<esc>
noremap Y y$
noremap <f5> :w <CR>:!clear <CR>:!python % <CR>
noremap <s-j> ddp
noremap <s-k> ddkkp
noremap <s-tab> :NERDTreeToggle<cr>
noremap <c-t> :vnew
set fillchars+=vert:\▏

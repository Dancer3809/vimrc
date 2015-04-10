execute pathogen#infect()

syntax on
filetype plugin indent on
set ffs=unix,dos,mac
set encoding=utf8
set backspace=indent,eol,start
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" visual
set background=dark
colorscheme solarized
set gfn=Monaco:h13
set number

set nobackup
set nowb
set noswapfile

set virtualedit=all
set nowrap

set t_Co=256


"
" Buttons mapping
let mapleader = ","

" Split navigation
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

" Run python script
map <leader>r :! python %<cr>

" Disable preview window for YouCompleteMe
set completeopt-=preview

autocmd BufWritePre * :%s/\s\+$//e
" NERDTree configurations
" Launch NERDTree on startup
" autocmd VimEnter * NERDTree
map <leader>n :NERDTreeToggle<cr>
" Prevend NERDTree buffer deletion
autocmd FileType nerdtree cnoreabbrev <buffer> b <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>
"   Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc$']

"  MiniBuffer
map <Leader>e :MBEOpen<cr>
map <Leader>c :MBEClose<cr>
map <Leader>t :MBEToggle<cr>

" Airline configuration
let g:airline_theme="base16"

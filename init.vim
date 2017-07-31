call plug#begin('~/.vim/plugged')

" syntax
Plug 'fatih/vim-go'
Plug 'othree/yajs.vim'
Plug 'elzr/vim-json'
Plug 'elixir-lang/vim-elixir'
Plug 'autozimu/LanguageClient-neovim'
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
Plug 'Shougo/deoplete.nvim'
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-projectionist'
Plug 'c-brenn/phoenix.vim'

" colorscheme
Plug 'valloric/MatchTagAlways'
Plug 'Raimondi/delimitMate'
Plug 'mhartington/oceanic-next'

" git helper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" utils
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'gko/vim-coloresque'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf'
Plug 'sheerun/vim-polyglot'
Plug 'ludovicchabant/vim-gutentags'
Plug 'neomake/neomake'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dyng/ctrlsf.vim'
Plug 'evidens/vim-twig'
Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'
Plug 'majutsushi/tagbar'

" Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

call plug#end()

" colorscheme option
colorscheme OceanicNext
syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let g:airline_powerline_fonts = 1
hi CursorLineNR guifg=#ffffff
set t_Co=256
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
set termguicolors

" Airline
set noshowmode
set noswapfile

set hidden

autocmd! BufWritePost * Neomake

" EasyAlign
xmap ga <Plug>(EasyAlign)

set nocompatible
filetype on

" Trigger configuration. Do not use <tab> if you use
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

" research config
nmap <C-f> <Plug>CtrlSFCwordPath
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_default_root = 'project'

" Remove automatically trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let mapleader=" "
set synmaxcol=200
set nu
set mouse=a

set shiftwidth=2
set tabstop=2
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set relativenumber

set incsearch
set nohlsearch
nnoremap <leader>s :nohlsearch<CR>

set foldenable
set foldlevelstart=99
set foldmethod=indent
map <c-p> :FZF<CR>
inoremap jk <esc>
inoremap <C-space> <C-n>

nnoremap <leader>s :w<CR>
nnoremap <leader>e :tabe ~/.config/nvim/init.vim<CR>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

"j and k movemements
nnoremap j gj
nnoremap k gk

"Colorscheme choice
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>- :!ctags -R .<cr>
nnoremap <leader>' :call signature#marker#Purge('all')
nnoremap <leader>u za
nnoremap <C-s> :Gstatus<cr>

"ClipBoard settings
set clipboard=unnamed

set scrolloff=30
set laststatus=2

"setlocal spell spelllang=en
autocmd BufEnter *.tex set spell
nnoremap <leader>c z=
nnoremap <leader>z z=1<CR><CR>
inoremap ,, <esc>mz[sz=1<CR>`zx

"Duplicate line
nnoremap <leader>d yyp
nnoremap <leader>t :tabe<cr>

" Use deoplete.
set runtimepath+=~/.config/nvim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Tagbar Toggle
nnoremap <leader>o :TagbarToggle<CR>

" CtrlP + CTAGS
nnoremap <silent> <F7> :CtrlPTag<cr>

" NerdTree
nnoremap <leader>i :NERDTreeTabsToggle<cr>

set splitbelow

" Teminal
:tnoremap jk <C-\><C-n>
:nnoremap <C-i> :sp term://zsh<cr>i<cr>
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
" move between tabs
:nnoremap <C-h> <C-W>h<cr>
:nnoremap <C-j> <C-W>j<cr>
:nnoremap <C-k> <C-W>k<cr>
:nnoremap <C-l> <C-W>l<cr>
:nnoremap <leader>q :q<CR>
:nnoremap <leader>Q :q!<CR>

map <leader> <Plug>(easymotion-prefix)
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
set synmaxcol=300000

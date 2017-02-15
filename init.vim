set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'valloric/MatchTagAlways'
Plug 'critiqjo/lldb.nvim'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'DoxygenToolkit.vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'mileszs/ack.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'evidens/vim-twig'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tyrannicaltoucan/vim-quantum'

call plug#end()

xmap ga <Plug>(EasyAlign)

set t_Co=256
" colorscheme OceanicNext
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:jsx_ext_required = 0

" Fix nerdtreetabs display
let g:nerdtree_tabs_synchronize_view = 0

" Remove automatically trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let mapleader=" "
set synmaxcol=200
syntax enable
set background=dark
colorscheme quantum
set nu
set mouse=a

set shiftwidth=2
set tabstop=2
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
inoremap jk <esc>
inoremap <Nul> <C-n>

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
nnoremap <leader>- :!ctags -R .<cr>

"ClipBoard settings
set clipboard=unnamed
nnoremap <leader>p :r !pbpaste<CR>
nnoremap <leader>y :.!pbcopy<CR>u

set scrolloff=30
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set laststatus=2

"setlocal spell spelllang=en
autocmd BufEnter *.tex set spell
nnoremap <leader>c z=
nnoremap <leader>z z=1<CR><CR>
inoremap ,, <esc>mz[sz=1<CR>`za

"Duplicate line
nnoremap <leader>d yyp
nnoremap <leader>t :tabe<cr>

" Use deoplete.
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
:nnoremap <F3> :sp term://zsh<cr>
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
" move between tabs
:nnoremap <C-h> <C-W>h<C-W>
:nnoremap <C-j> <C-W>j<C-W>
:nnoremap <C-k> <C-W>k<C-W>
:nnoremap <C-l> <C-W>l<C-W>
:nnoremap <leader>q :q<CR>
:nnoremap <leader>Q :q!<CR>
:nnoremap <leader>md :m +
:nnoremap <leader>mu :m -

map <leader> <Plug>(easymotion-prefix)
set synmaxcol=300000

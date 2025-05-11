"nnoremap <SPACE> :

set encoding=UTF-8

set signcolumn=yes
set notimeout

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

autocmd VimEnter * NERDTree

autocmd! User vim-which-key call which_key#register('<SPACE>', 'g:which_key_map')

" colorscheme desert
"colo seoul256

" Disable vi compatibility
set nocompatible

" Enable type file detection
filetype on
" Enable plugins and load plugin for the detected file typ
filetype plugin on
" Load indent file fordetected file type
filetype indent on

" Syntax highlighting
syntax on

" numbers
set number
set relativenumber

" Highlight cursor line
set cursorline

set nobackup
set noswapfile

" search settings -----------------------------------------------------------{{{
set incsearch
set hlsearch
set ignorecase
set smartcase
"}}}

" Auto completion (Tab) -----------------------------------------{{{
" Enable auto completion menu after pressing TAB.
"set wildmenu

" Make wildmenu behave like similar to Bash completion.
"set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
"set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}}

" Code Folding --------------------------------------------{{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Plugins ------------------------------------------------{{{
call plug#begin()


Plug 'vimwiki/vimwiki'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'preservim/vim-markdown'

Plug 'liuchengxu/vim-which-key'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.

Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim' " run with :Goyo/Goyo!
Plug 'junegunn/limelight.vim' " run with :Limelight [0.0 - 1.0]/Limelight!

call plug#end()
" }}}

colorscheme dracula
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

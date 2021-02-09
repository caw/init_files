set nocompatible
filetype off

" change leader to ','
let mapleader=","
let maplocalleader=","

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin() 
Plugin 'VundleVim/Vundle.vim' 
Plugin 'pangloss/vim-javascript'
Plugin 'prettier/vim-prettier'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-pandoc/vim-pandoc' 
Plugin 'vim-pandoc/vim-pandoc-syntax' 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'sonph/onehalf', {'rtp': 'vim/'} 
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'itchyny/lightline.vim' 
Plugin 'rakr/vim-one'
Plugin 'lervag/vimtex'
" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'joereynolds/gq.vim'
Plugin 'vim-scripts/Blueshift'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'reasonml-editor/vim-reason-plus'
call vundle#end()

let g:LanguageClient_serverCommands = {
    \ 'reason': ['/Users/caw/language_servers/reason-language-server']
    \ }





" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

filetype plugin indent on
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"PDF viewer"
let g:tex_flavor="latex"
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r'

" NERDTree
nmap <C-f> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" switch to left / right split (mostly for Nerd Tree)
map <C-h> <C-W>h
map <C-l> <C-W>l

" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

"=====================
"
"enable syntax highlighting
syntax enable

" gqip

nmap Q gqip


syntax on 
set t_Co=256 
colorscheme Blueshift 
let g:airline_theme={ 'colorscheme': 'PaperColor'}
let g:one_allow_italics = 1
set background=light
" let g:lightline={'colorscheme':'onehalflight'}
let g:lightline={'colorscheme':'atlas'}
set laststatus=2

" show line numbers
set relativenumber
set number
set number relativenumber

" set tabs to have 4 spaces
set ts=4
set smarttab

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
set shiftround

" show the matching part of the pair for [] {} and ()
set showmatch

set ignorecase
set smartcase

" source code pro
set guifont=Source\ Code\ Pro:h14

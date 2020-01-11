syntax on
set number
set autoindent
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab smarttab

" Vim Plug Section
call plug#begin(expand('~/.vim/plugged'))
" Nord colorscheme
" Plug 'arcticicestudio/nord-vim'

"Gruvbox theme
Plug 'morhetz/gruvbox'
" Vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File navigation
Plug 'scrooloose/nerdtree'

"A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'

" HTML5 syntax support
Plug 'othree/html5.vim'

" HTML autocomplete (like emmet)
Plug 'rstacruz/sparkup'

"HTML autoclose tag
Plug 'vim-scripts/HTML-AutoCloseTag'

" Multiple syntax support
Plug 'sheerun/vim-polyglot'

" Git Support ti Vim
Plug 'tpope/vim-fugitive'

" Code completion
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1

call plug#end()

" Set colorscheme
colorscheme gruvbox
set background=dark    " Setting dark mode

" Set powerline font support to airline
let g:airline_powerline_fonts = 1

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Map a specific shortcut to open NERDTree (Ctrl + n)
map <C-n> :NERDTreeToggle<CR>

" Map Ctrl + Alt + N shortcut to focus NERDTree
map <C-A-n> :NERDTreeFocus<CR>


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'vim-scripts/AutoComplPop'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox.git'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree.git'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-surround.git'
Plugin 'taglist.vim'
Plugin 't9md/vim-chef'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Dependencies: 
"  - brew install ctags
"  - https://github.com/powerline/fonts
"  - pip install flake8
"
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set fdm=syntax
set colorcolumn=80
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
filetype plugin indent on
set t_Co=256
let g:solarized_termcolors=256
set background=dark    " Setting dark mode
colorscheme solarized
"set background=light   " Setting light mode
"nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
"nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
"nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

"nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
"nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
"nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" 
" Ruby specific indentation
au BufEnter *.rb set ai sw=2 ts=2 sta et fo=croql

"Q. How can I open a NERDTree automatically when vim starts up if no files were specified?
"A. Stick this in your vimrc
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Q. How can I map a specific key or shortcut to open NERDTree?
"A. Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>

"
" vim-airline plugin
"
set laststatus=2

"Automatically displays all buffers when there's only one tab open.
" This is disabled by default; add the following to your vimrc to enable the extension:
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

"Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Finally, you can add the convenience variable let g:airline_powerline_fonts = 1 to your vimrc which will automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1


nmap <F8> :TagbarToggle<CR>

set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>
set hlsearch
setlocal spell spelllang=en_us
nnoremap <space> za

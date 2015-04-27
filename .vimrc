" Dependencies: 
"  - brew install ctags
"  - https://github.com/powerline/fonts
"
" git clone https://github.com/vim-scripts/AutoComplPop
" git clone https://github.com/kien/ctrlp.vim
" git clone https://github.com/morhetz/gruvbox.git
" git clone https://github.com/tomasr/molokai
" git clone https://github.com/scrooloose/nerdtree.git
" git clone https://github.com/majutsushi/tagbar
" git clone https://github.com/bling/vim-airline
" git clone git://github.com/altercation/vim-colors-solarized.git
" git clone https://github.com/xolox/vim-easytags
" git clone https://github.com/xolox/vim-misc
" git clone git://github.com/tpope/vim-surround.git
"

syntax on
set number
set tabstop=4
set fdm=manual
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
execute pathogen#infect()
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

" highlight search results
set hlsearch


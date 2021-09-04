" (optional) For those using the fish shell: add set shell=/bin/bash to your
" .vimrc
set shell=/bin/bash
" Dependencies: 
"  - git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"  - brew install ctags
"  - https://github.com/powerline/fonts
"  - pip install flake8
"  - foodcritic
"  - shellcheck (brew install shellcheck)
"  and then run vim and issue command :PluginInstall
"
" iTerm2 colorscheme: https://github.com/morhetz/gruvbox-contrib/tree/master/iterm2
" System Font: Fira Sans Mono: http://www.carrois.com/en/fira-4-1/

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
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'sheerun/vim-polyglot'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox.git'
Plugin 'tpope/vim-unimpaired' " needed for gruvbox hlsearch cursor color fix
"Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
"Plugin 'altercation/vim-colors-solarized.git'
" solarized handled by vim-colorschemes now
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-surround.git'
Plugin 'taglist.vim'
"Plugin 't9md/vim-chef'
Plugin 'dougireton/vim-chef.git'
Plugin 'nvie/vim-flake8'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'shutnik/jshint2.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'scrooloose/syntastic'
Plugin 'edkolev/tmuxline.vim'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'hashivim/vim-terraform'
Plugin 'juliosueiras/vim-terraform-completion'
Plugin 'vim-syntastic/syntastic'
Plugin 'fatih/vim-hclfmt'
Plugin 'c.vim'
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

syntax on
set expandtab
set tabstop=2
set fdm=syntax
set colorcolumn=80
"set listchars=tab:▸\ ,eol:¬
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¬,precedes:«,extends:»
set nowrap        " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" experimental
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
autocmd filetype python set expandtab

" handlebars highlighting
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache


let g:solarized_termcolors=256
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_termcolors=256
if &t_Co >= 256 || has("gui_running")
    colorscheme gruvbox
    "colorscheme solarized 
endif
set background=dark    " Setting dark mode

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

"set background=light   " Setting light mode
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" 
" Python specific indentation
"au BufEnter *.py set ai sw=4 ts=4 sta et fo=croql

"Q. How can I open a NERDTree automatically when vim starts up if no files were specified?
"A. Stick this in your vimrc
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Q. How can I map a specific key or shortcut to open NERDTree?
"A. Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>

" keep NERDTree open in buffers
" let NERDTreeQuitOnOpen=0
" keep NERDTree open in tabs
" let g:nerdtree_tabs_open_on_console_startup=1

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
nmap <silent> ./ :nohlsearch<CR>
nmap <leader>l :set list!<CR>
" setlocal spell spelllang=en_us
nnoremap <space> za

""" JSHINT2

" jshint validation
nnoremap <silent><F1> :JSHint<CR>
inoremap <silent><F1> <C-O>:JSHint<CR>
vnoremap <silent><F1> :JSHint<CR>

" show next jshint error
nnoremap <silent><F2> :lnext<CR>
inoremap <silent><F2> <C-O>:lnext<CR>
vnoremap <silent><F2> :lnext<CR>

" show previous jshint error
nnoremap <silent><F3> :lprevious<CR>
inoremap <silent><F3> <C-O>:lprevious<CR>
vnoremap <silent><F3> :lprevious<CR>

" Plugin 'airblade/vim-gitgutter'
set updatetime=250

"rainbow_parentheses
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"vim-indent-guides: <leader>ig to toggle

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_chef_checkers = ['foodcritic']
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_sh_shellcheck_quiet_messages = { "level" : "warning" }
let b:syntastic_mode = "active"

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_terraform_tffilter_plan = 1

"let g:syntastic_aggregate_errors = 1

nmap <C-s> :lclose<CR>
" TODO: make toggle function

" Time to forget arrow-navigation.
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Change cursor shape in different modes
" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"
" or
":autocmd InsertEnter,InsertLeave * set cul!
" Change cursor shape between insert and normal mode in iTerm2.app
" 
" or
"
"if $TERM_PROGRAM =~ "iTerm"
"    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
"endif
" 
" 
"
" tmux vim-airline statusbar integration
" 
"
" NOTE: that vim-airline has a tmuxline extenstion which by default sets 
" airline's color theme onto tmuxline. 
" If you don't want airline colors in tmuxline, set:
let g:airline#extensions#tmuxline#enabled = 0

"call tmuxline#Tmuxline()
let g:tmuxline_preset = 'full'
" let g:tmuxline_preset = 'tmux'
" let g:tmuxline_preset = 'nightly_fox'

" let g:tmuxline_theme = 'icebert'
" or
" let g:tmuxline_theme = 'zenburn'
" " or
let g:tmuxline_theme = 'vim_powerline'
" " other themes available in autoload/tmuxline/themes/*

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
" nnoremap <Leader>l :ls<CR> " overlaps with line numbers toggle.
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" TODO:
" set virtualedit=onemore

set foldmethod=manual
" REFER: https://github.com/mustache/vim-mustache-handlebars#mustache-abbreviations
let g:mustache_abbreviations = 1
set completeopt-=preview
set omnifunc=syntaxcomplete#Complete

" HCL
let g:hcl_fmt_autosave = 0
let g:tf_fmt_autosave = 0
let g:nomad_fmt_autosave = 0

" C Support
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

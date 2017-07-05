set shell=/bin/bash
"" space-vim custom config
let g:spacevim_relativenumber = 0
" the default value is vimfiler
" let g:spacevim_filemanager = 'nerdtree'
let g:spacevim_custom_plugins = [
    \  ['t9md/vim-chef'],
    \  ['vadv/vim-chef'],
\ ]

" Enable syntax for chef files some like this:
autocmd FileType ruby,eruby set filetype=ruby.eruby.chef

let g:spacevim_max_column     = 80

set tabstop=2
set fdm=syntax
set colorcolumn=80
set listchars=tab:▸\ ,eol:¬
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
                  " case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  " shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

nmap <silent> ./ :nohlsearch<CR>
nmap <leader>l :set list!<CR>

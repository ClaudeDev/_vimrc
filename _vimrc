execute pathogen#infect()
syntax on
    filetype plugin indent on

set guifont=Consolas:h12:cANSI

:set wrap "wrap long lines so they fit

imap jk <Esc>

let g:user_emmet_leader_key=','

filetype off
syntax on
filetype plugin indent on

set encoding=utf-8

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <C-n> :NERDTreeToggle<CR>



nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
filetype plugin indent on
set pastetoggle=<F2>


" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

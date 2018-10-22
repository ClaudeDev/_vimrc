execute pathogen#infect()
syntax on
    filetype plugin indent on
		

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set belloff=all "Remove flashing when error
imap jk <Esc>

:set number relativenumber

set wildmenu     "visual autocomplete in command menu

map <C-a> <esc>ggVG<CR>           "select all remapped to ctrl-a

nnoremap <leader>u :GundoToggle<CR> " toggle gundo

set guifont=Consolas:h12:cANSI

:set wrap "wrap long lines so they fit

let g:user_emmet_leader_key=','

filetype off
syntax on
filetype plugin indent on

set encoding=utf-8

map <C-n> :NERDTreeToggle<CR>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set tabstop=2     " a tab is two spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
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

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
filetype plugin indent on


" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <c-s> :w<CR>    

let g:javascript_plugin_jsdoc = 1 "Enables syntax highlighting for JSDocs

let g:javascript_plugin_ngdoc = 1 "Enables some additional syntax highlighting for NGDocs

let g:javascript_plugin_flow = 1 "Enables syntax highlighting for Flow

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['html'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']

let g:ale_lint_on_text_changed = 'normal' "PROVA
let g:ale_lint_on_insert_leave = 1

let g:ale_fix_on_save = 1    "Run prettier when saving

"Prettier Config
let g:ale_javascript_prettier_options = ' --tab-width 4 --single-quote --trailing-comma es5'
let g:indent_guides_enable_on_vim_startup = 1    

	packadd! matchit
:map <F2> "+p
:map <F3> "+y

let g:delimitMate_expand_cr = 2

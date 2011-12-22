"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bootstrap plugins and filetypes
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible            " Turn off vi compatibility mode
filetype off                " Interferes with Pathogen, so turn off
call pathogen#helptags()    " Generate help tags for plugins
call pathogen#infect()      " Load all the plugins
filetype on                 " Reenable filetype
filetype indent on
filetype plugin on

set history=1000          " Increase command history size
set ruler                 " Show the ruler
set incsearch             " Incomplete search matches
set hlsearch              " Keep search highlight after complete
set relativenumber        " Show line numbers
set showmode              " Show the current mode in the last line
set showcmd               " Show the current command in the last line
set showmatch             " Highlight matching brackets
set title                 " Set the window title in the terminal
set wildmenu              " Improve tab completion menu
set wildmode=list:longest " Tab complete longest common string and show list
set t_Co=256              " Set 256 color mode
set wildignore+=.git,.hg,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.sw?                            " Vim swap files
set encoding=utf-8        " Default to UTF-8
set scrolloff=2           " start scrolling 2 lines from screen edge

syntax on
colorscheme zenburn

set hidden                " Hide rather than close abandoned buffers
set backspace=2           " Make backspace work for indent, eol, start
set shortmess=atI         " Shorten the large interruptive prompts
set ttyfast               " Smoother redrawing with multiple windows
set lazyredraw            " Suspend redrawing while running macros
set matchtime=3           " Jump to matching paren for a briefer time
set splitbelow            " Open new splits below current window
set splitright            " Open new vsplits to the right
set autowrite             " Autowrite files when leaving
set dictionary=/usr/share/dict/words
set number
set showmatch " Highlight matching brackets
set backspace=2 " Make backspace work as expected (indent, eol, start)



" Indentation
set autoindent
set listchars=tab:>-,trail:-
set softtabstop=4  
set tabstop=4
set shiftwidth=4 expandtab

set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable saving readonly files with sudo
cmap w!! %!sudo tee > /dev/null %
command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers
""""""""""""""""""""""""""""""""""""""""""""""""""
function! g:ToggleNuMode()
    if(&rnu == 1)
        set nu
    else
        set rnu
    endif
endfunc

nnoremap <C-L> :call g:ToggleNuMode()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
let maplocalleader=","

 " Toggle NERDTRee with F2 in command mode
noremap <f2> :NERDTreeToggle<cr>
 " and in insert mode
inoremap <f2> :NERDTreeToggle<cr>i
 " Move line down one
nnoremap - ddp
 " Open .vimrc in a new split for quick editing
nnoremap <leader>ev :split $MYVIMRC<cr>
 " Source .vimrc in current window
nnoremap <leader>sv :source $MYVIMRC<cr>
 " Go to start of line
nnoremap H 0
 " Go to end of line
nnoremap L $

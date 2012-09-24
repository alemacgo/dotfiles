" welcome to the third millenium
set nocompatible
set ttyfast
set lazyredraw
set autowrite
set autoread

" no need to use shift
nnoremap ; :

" colors, please
syntax enable

set encoding=utf-8

" display incomplete commands
set showcmd

" show insert, visual mode
set showmode

" increase command memory
set history=100

" manage plugins
call pathogen#infect()

" determine indentation and colors with filetype
filetype plugin indent on

" *** whitespace **************************************************************
" wrap lines
set wrap
set textwidth=79

" 4-space tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" spaces, not tabs
set expandtab

" backspace through everything in insert mode
set backspace=indent,eol,start

" *** searching ***************************************************************
" highlight matches
set hlsearch

" incremental search
set incsearch

" searches are case insensitive
set ignorecase

" ...unless they contain at least one capital letter
set smartcase

" Don't move on *
nnoremap * *<c-o>

" *** navigation ***
" use comma as <leader> key instead of backslash
let mapleader = ','

" easier navigation between split windows
nnoremap <tab>h <c-w>h
nnoremap <tab>l <c-w>l
nnoremap <tab>k <c-w>k
nnoremap <tab>j <c-w>j

" easy open, split, vertical split and open tab from the same directory
map <leader>o :e <C-R>=expand("%:p:h") . "/" <return>
map <leader>s :sp <C-R>=expand("%:p:h") . "/" <return>
map <leader>v :vsp <C-R>=expand("%:p:h") . "/" <return>
map <leader>t :tabe <C-R>=expand("%:p:h") . "/" <return>

" easy new buffer, horizontal window, vertical window or tab
map <leader>O :e <return>
map <leader>S :sp <return>
map <leader>V :vsp <return>
map <leader>T :tabe <return>

" cursor visible
set scrolloff=3
set sidescroll=1
set sidescrolloff=10

" easy navigation to start or end of line
noremap H ^
noremap L g_

" *** editing ****************************************************************
" inserts new line without going into insert mode
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" *** visualization **********************************************************
colorscheme Tomorrow-Night

" line numbers
set nu

" relative line numbers for performing motions
" set rnu

" last window always has a status line
set laststatus=2

" ruler
set ruler

" highlight current line
set cursorline

" see whitespace, useful with python
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" ...don't see whitespace in html and xml docs
autocmd filetype html,xml set nolist

" when in diff mode, fill empty lines
set fillchars=diff:⣿

" *** misc ***
" format paragraph
map <leader>j gq}

" navigate easily with files and commmands
set wildmenu
set wildmode=list:longest

" ignore non-relevant fyletypes
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc,*.log          " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OS X
set wildignore+=*.pyc,*.class                    " Python byte code

" quickly edit .vimrc
nmap <silent> <leader>. :e $MYVIMRC<return>

" fastest save
nmap <silent> <leader>a :w<return>

" fastest quit
nmap <silent> <leader>q :q<return>

" clear search results
map <leader>/ :nohl<return>

" change the terminal title
set title

" easy paste toggle
map <leader>i :set paste! <return>

" sudo to write
cmap w!! w !sudo tee % >/dev/null

" save when losing focus
" au FocusLost * :wa

" calculator!
" usage: 2+2<C-B>
inoremap <C-B> <C-O>yiW<End>=<C-R>=<C-R>0<CR>=


" *** status line ************************************************************
" color
"augroup ft_statuslinecolor
"    au!
"    au InsertEnter * hi StatusLine ctermfg=196 guifg=#FF3145
"    au InsertLeave * hi StatusLine ctermfg=130 guifg=#CD5907
"augroup END

set statusline=%f    " Path.
set statusline+=%m   " Modified flag.
set statusline+=%r   " Readonly flag.
set statusline+=%w   " Preview window flag.

set statusline+=\    " Space.

set statusline+=%#redbar#                " Highlight the following as a warning.
set statusline+=%*                           " Reset highlighting.

set statusline+=%=   " Right align.
set statusline+=[0x%B]\    " Space.

" File format, encoding and type.  Ex: "(unix/utf-8/python)"
set statusline+=(
set statusline+=%{&ff}                        " Format (unix/DOS).
set statusline+=/
set statusline+=%{strlen(&fenc)?&fenc:&enc}   " Encoding (utf-8).
set statusline+=/
set statusline+=%{&ft}                        " Type
set statusline+=)

" Line and column position and counts.
set statusline+=\ (%p%%\ of\ %L,\ col\ %2c)

" *** Specific stuff ***
" pdflatex the current doc
noremap <leader>p :w\|!pdflatex %<return>

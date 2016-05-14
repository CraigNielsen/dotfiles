" JEDI
let g:jedi#use_splits_not_buffers = "left"

set history=700

" Enable filetype plugins

filetype indent on

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Searching _______________________________________________:
" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" search as characters are entered 
set incsearch

let g:ag_working_path_mode="r"

" The Silver Searcher
if executable('ag')
      " Use ag over grep
        set grepprg=ag\ --nogroup\ --nocolor

          " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
            let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

          " ag is fast enough that CtrlP doesn't need to cache
          let g:ctrlp_use_caching = 0
        endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

nnoremap \ :Ag<SPACE>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" __________________________________________________________

" How many tenths of a second to blink when matching brackets
set mat=2

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable

set term=xterm-256color
" colorscheme desert
" colorscheme monokai
set background=light
colorscheme solarized


set t_Co=256
let g:solarized_termcolors=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Allow mod in python source files
set modeline

" Always show the status line
set laststatus=2

" show line numbers
set number

" Python ________________________________________________________
" set tabs to have 4 spaces
set shiftwidth=4
set tabstop=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" visual autocomplete for the command menu
set wildmenu

" highlight the current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" PLUGINS and Mappings
nnoremap <leader>a :Ag



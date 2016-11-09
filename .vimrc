set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'easymotion/vim-easymotion'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" _____________++++++++++++++++++++++++++++++++++++++++

let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-tab>', '<Up>']
let g:SuperTabDefaultCompletionType = '<tab>'

let g:UltiSnipsExpandTrigger = "<C-y>"
let g:UltiSnipsJumpForwardTrigger = "<C-y>"
let g:UltiSnipsJumpBackwardTrigger = "<C-b>"

" using supertab config
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
" 
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" _____________++++++++++++++++++++++++++++++++++++++++
" easymotion config



" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
"
"" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
"
" " Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" ____________++++++++++++++++++++++++++++++++++++++++
" using older config

" let g:UltiSnipsExpandTrigger="<C-n>"
" let g:UltiSnipsJumpForwardTrigger="<c-y>"
" let g:UltiSnipsJumpBackwardTrigger="<c-m>"
" 
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=['/home/craig/.vim/UltiSnips', 'UltiSnips']
" let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
" let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" _____________++++++++++++++++++++++++++++++++++++++++
" Enable filetype plugins
"
" _____________++++++++++++++++++++++++++++++++++++++++
" cntrl p config
let g:ctrlp_max_files=10000
" let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'
set wildignore+=*/.git/*,*/node_modules
" _____________++++++++++++++++++++++++++++++++++++++++
" ternjs config
let g:tern_map_keys=1
" _____________++++++++++++++++++++++++++++++++++++++++
set history=700
filetype plugin indent on    " required
"Always show current position
set ruler
nnoremap <F5> :NERDTreeToggle<CR>

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Enable syntax highlighting
syntax enable
set background=light
" set t_Co=256
set term=xterm-256color
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=1
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast="normal"
let g:solarized_visibility="high"


colorscheme solarized
" colorscheme desert
" colorscheme monokai


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" Always show the status line
set laststatus=2

set number


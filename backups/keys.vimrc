" map Leader
let mapleader = ","
" keep backward f search, remapping it to ,;
nnoremap <Leader>; ,

" in-line scrolling
nmap <Leader>j gj
nmap <Leader>k gk
" vim fugitive
nmap <Leader>mg :Gstatus<CR>
" craigs customs
" l2 == leader2
" l2 Test This
map <leader>mtt :!/home/craig/vim_projects/testthis.sh %:p<CR>

" hard mode config
nnoremap <Leader>h <Esc>:call ToggleHardMode()<CR>

" buffer keys
nnoremap <Leader>bb :b#<CR>
"nnoremap <Leader>bn :bn<CR>
"nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bf :bf<CR>
nnoremap <Leader>bl :bl<CR>
nnoremap <Leader>bw :w<CR>:bd<CR>
nnoremap <Leader>bd :bd!<CR>
" new buffer/tab
" nnoremap <Leader>e :enew<CR>

" Looper buffers
let g:buffergator_mru_cycle_loop = 0
let g:buffergator_sort_regime = "mru"

" Go to the previous buffer open
nnoremap <leader>j :bp<cr>
nnoremap <leader>bp :BuffergatorMruCyclePrev<cr>
" Go to the next buffer open
nnoremap <leader>k :bn<cr>
nnoremap <leader>bn :BuffergatorMruCycleNext<cr>
" View the entire list of buffers open
nnoremap <leader>bl :BuffergatorOpen<cr>
" To open a new empty buffer
nnoremap <leader>T :enew<cr>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nnoremap <leader>bq :bp <BAR> bd #<cr>

"toggle location lists etc
let g:lt_location_list_toggle_map = '<leader>c'
let g:lt_quickfix_list_toggle_map = '<leader>v'

nnoremap <silent><F3> :Ack<CR>
nmap <silent><RIGHT> :cnext<CR>
nmap <silent><LEFT> :cprev<CR>

"rename
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>
" window keys
nnoremap <Leader>w< <C-w><
nnoremap <Leader>w> <C-w>>
nnoremap <Leader>w- <C-w>-
nnoremap <Leader>w+ <C-w>+
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>wx :close<CR>

nnoremap <Leader>w <c-w>

" %% to expand active buffer location on cmdline
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" CtrlP keys
nnoremap <Leader>pp :CtrlP<CR>
nnoremap <Leader>pf :CtrlP<CR>
nnoremap <Leader>pm :CtrlPMRUFiles<CR>
nnoremap <Leader>pr :CtrlPMRUFiles<CR>
nnoremap <Leader>pb :CtrlPBuffer<CR>
nnoremap <Leader>pb :CtrlPBuffer<CR>

" Function keys
nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <Leader><F3> :set hlsearch!<CR>
nnoremap <F6> :source $HOME/.config/nvim/init.vim<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <Leader><F5> :NERDTreeFind<CR>
nnoremap <F7> :UndotreeToggle<CR>
nnoremap <F8> :Geeknote<CR>
" indent whole file according to syntax rules
noremap <F9> gg=G

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Don't use Ex mode, use Q for formatting
" map Q gq

" relative line numbers
nnoremap <Leader>3 :NumbersToggle<CR>

" remap number increment to C-s (C-a is already in use by tmux)
" nnoremap <C-s> <C-a>

" Word count selection
" vnoremap <Leader>w :w !wc -w<CR>


" vim paste mode toggle (for fixing indentation issues when pasting text)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" override read-only permissions
" cmap w!! %!sudo tee > /dev/null %

" allow ,, for vimsneak
nmap <Leader>, <Plug>SneakPrevious

" camelCase motion settings
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" easy motion
" <Leader>f{char} to move to {char}
map  <Leader>s <Plug>(easymotion-bd-f)
nmap <Leader>s <Plug>(easymotion-overwin-f)
"
"" s{char}{char} to move to {char}{char}
map  <Leader>f <Plug>(easymotion-bd-f2)
nmap <Leader>f <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
"
"comment
map <c-_> <plug>NERDCommenterToggle
"autopep8

" " Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)

" you complete me
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-tab>', '<Up>']
let g:SuperTabDefaultCompletionType = '<tab>'

let g:UltiSnipsExpandTrigger = "<C-y>"
let g:UltiSnipsJumpForwardTrigger = "<C-y>"
let g:UltiSnipsJumpBackwardTrigger = "<C-b>"
nnoremap <Leader>g :YcmCompleter GoToDefinition<CR>
nmap <Leader>tg yiw:CtrlP<CR><C-\>w
nmap <Leader>tt /<C-R>"<CR>
" neomake
"nmap <Leader><Space>o :lopen<CR>
"nmap <Leader><Space>c :lclose<CR>
"nmap <Leader><Space>, :ll<CR>
"nmap <Leader><Space>n :lnext<CR>
"nmap <Leader><Space>p :lprev<CR>

" folding
nmap <Leader><F2> zf%

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" autocomplete
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" let g:UltiSnipsExpandTrigger="<C-j>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=UltiSnips#ExpandSnippet()"

" colorizer
nmap <Leader>tc :ColorToggle<CR>

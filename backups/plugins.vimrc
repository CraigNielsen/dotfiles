filetype plugin indent on

let g:python3_host_prog = '/home/craig/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/home/craig/.pyenv/versions/neovim2/bin/python'
" neomake config
autocmd! BufWritePost,BufEnter * Neomake
" autocmd BufLeave * QFix
let g:neomake_place_signs = 1
let g:neomake_open_list = 0
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
" TODO: check if in project reps with find, then enable eslint
 if ($PWD == '/home/craig/git_repos/reps')
   echo "working in pwd: /home/craig/git_repos/reps"
   echo $PWD .'website-service/node_modules/.bin/eslint'

   let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
endif
" autopep8
let g:autopep8_ignore="E501"
" pymodelint:
let g:pymode_lint_cwindow = 0
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 1
let g:pymode_line_ignore = "E501"
let g:pymode_run_bind = '<SHIFT><C-r>'
"emmet irritation
let g:user_emmet_leader_key='<C-Z>'

" silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
" buffergator
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

set termguicolors
set background=dark
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_hls_cursor='orange'
let g:gruvbox_invert_selection='orange'

colorscheme gruvbox
" make background transparent
" hi Normal ctermbg=NONE
" hi EndOfBuffer ctermbg=NONE
" hi LineNr ctermbg=234
" ________________________________________________________________
" CtrlP
let g:ctrlp_prompt_mappings={'PrtClearCache()':['<Leader><F5>']}
let g:ctrlp_prompt_mappings={'PrtdeleteEnt()':['<Leader><F7>']}
let g:ctrlp_match_window='bottom,order:btt,min:2,max:25'
let g:ctrlp_working_path_mode = 2
" let g:ctrlp_root_markers = ['.git']
set wildmenu " enhanced autocomplete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot
" ",*public/css/*,*public/js*

" delimitMate options
let delimitMate_expand_cr=1

" enable matchit (for matching tags with %)
runtime macros/matchit.vim

" vim-sneak settings
hi SneakPluginTarget ctermfg=black ctermbg=181818

" javascript libraries syntax
let g:used_javascript_libs = 'jquery,underscore,react,flux,chai'

" completion
" augroup omnifuncs
  " autocmd!
  " autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  " autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
" augroup end

" tern
" if exists('g:plugs["tern_for_vim"]')
  " let g:deoplete#omni#functions = {}
  " let g:deoplete#omni#functions.javascript = [
    " "\ 'tern#Complete',
    " "\ 'jspc#omni'
  " "\]
" endif
"
" " deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources = {}
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']
" let g:tern_request_timeout = 1
" let g:SuperTabClosePreviewOnPopupClose = 1

" disable colorizer at startup
let g:colorizer_startup = 0
let g:colorizer_nomap = 1

" emmet-vim settings
" let g:user_emmet_settings = { "html": { "quote_char": "'"} }

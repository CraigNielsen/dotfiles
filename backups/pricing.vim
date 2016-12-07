let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +136 git_repos/reps/backend-service/backend/legacy/sync/insert_orders.py
badd +157 git_repos/reps/backend-service/backend/legacy/sync/tests/test_insert_inv_rows_for_bsop.py
badd +14 git_repos/reps/backend-service/backend/stock/pricing.py
badd +27 git_repos/reps/backend-service/backend/stock/tests/test_pricing.py
badd +0 git_repos/reps/backend-service/backend/legacy/sync/upsert_products.py
argglobal
silent! argdel *
edit git_repos/reps/backend-service/backend/legacy/sync/upsert_products.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 144 - ((54 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
144
normal! 037|
lcd ~/git_repos/reps/backend-service/backend/legacy/sync
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

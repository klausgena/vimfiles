" ~\vimfiles\sessions\schrijven.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 31 januari 2017 at 10:04:49.
" Open this file in Vim and run :source % to restore your session.

set guioptions=gte
silent! set guifont=Consolas:h13
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +24 Dropbox\Schrijfsels\Blob.md
badd +94 Dropbox\Schrijfsels\Schrijflog.md
badd +3 Dropbox\Schrijfsels\Leer.md
badd +124 Dropbox\Schrijfsels\Propaganda\notas.md
badd +31 Dropbox\De\ Poetinschool\autorit.md
badd +34 Dropbox\Schrijfsels\De\ gouden\ koepel\de_gouden_koepel.md
badd +118 Dropbox\Schrijfsels\Propaganda\Notities\notas.md
badd +286 Dropbox\Schrijfsels\Propaganda\Notities\notas_extra.md
badd +3 Dropbox\De\ Poetinschool\taifon.md
badd +29 vimfiles\vimrc
argglobal
silent! argdel *
set stal=2
edit Dropbox\Schrijfsels\Propaganda\Notities\notas.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 75) / 151)
exe '2resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 2resize ' . ((&columns * 120 + 75) / 151)
exe '3resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 3resize ' . ((&columns * 120 + 75) / 151)
argglobal
enew
" file \Users\Lenovo\ T420\NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~\Dropbox\Schrijfsels
wincmd w
argglobal
enew
file ~\Dropbox\Schrijfsels\notas_extra.md_VOOM26
setlocal fdm=expr
setlocal fde=voom#TreeFoldexpr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~\Dropbox\Schrijfsels
wincmd w
argglobal
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
2
silent! normal! zo
4
silent! normal! zo
50
silent! normal! zo
82
silent! normal! zo
105
silent! normal! zo
122
silent! normal! zo
129
silent! normal! zo
let s:l = 117 - ((3 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
117
normal! 0
lcd ~\Dropbox\Schrijfsels
wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 75) / 151)
exe '2resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 2resize ' . ((&columns * 120 + 75) / 151)
exe '3resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 3resize ' . ((&columns * 120 + 75) / 151)
tabedit ~\Dropbox\Schrijfsels\De\ gouden\ koepel\de_gouden_koepel.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
2
silent! normal! zo
31
silent! normal! zo
128
silent! normal! zo
let s:l = 117 - ((1 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
117
normal! 0
lcd ~\Dropbox\Schrijfsels
tabedit ~\Dropbox\Schrijfsels\Propaganda\notas.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 30 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 89 + 75) / 151)
argglobal
enew
" file ~\Dropbox\Schrijfsels\NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~\Dropbox\Schrijfsels
wincmd w
argglobal
enew
file ~\Dropbox\Schrijfsels\notas.md_VOOM9
setlocal fdm=expr
setlocal fde=voom#TreeFoldexpr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~\Dropbox\Schrijfsels
wincmd w
argglobal
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
2
silent! normal! zo
4
silent! normal! zo
50
silent! normal! zo
81
silent! normal! zo
82
silent! normal! zo
104
silent! normal! zo
105
silent! normal! zo
121
silent! normal! zo
122
silent! normal! zo
128
silent! normal! zo
129
silent! normal! zo
let s:l = 122 - ((21 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
122
normal! 0
lcd ~\Dropbox\Schrijfsels
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 30 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 89 + 75) / 151)
tabnext 3
set stal=1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~\Dropbox\De\ Poetinschool
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 32|vert 1resize 30|2resize 15|vert 2resize 120|3resize 16|vert 3resize 120|
1wincmd w
tabnext 3
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~\Dropbox\De\ Poetinschool
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 32|vert 1resize 30|2resize 32|vert 2resize 30|3resize 32|vert 3resize 89|
3wincmd w
tabnext 3
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128

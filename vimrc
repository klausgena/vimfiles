set encoding=utf-8  
set fileencoding=utf-8
setlocal wrapmargin=10
set title 
set spell spelllang=nl
set noerrorbells visualbell t_vb=
set number

call plug#begin() 

Plug 'tpope/vim-sensible' 
Plug 'reedes/vim-thematic'
Plug 'kana/vim-textobj-user'
Plug 'reedes/vim-pencil' 
Plug 'reedes/vim-textobj-quote', {'for': ['text', 'markdown']} 
Plug 'reedes/vim-textobj-sentence', {'for': ['text', 'markdown']} 
Plug 'reedes/vim-colors-pencil', {'for': ['text', 'markdown']} 
Plug 'junegunn/goyo.vim', {'for': ['text', 'markdown']} 
Plug 'junegunn/limelight.vim', {'for': ['text', 'markdown']} 
Plug 'plasticboy/vim-markdown', {'for': ['text', 'markdown']} 
Plug 'bling/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'baskerville/bubblegum'
Plug 'xolox/vim-shell' 
Plug 'xolox/vim-misc' 
Plug 'VOoM'
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'JSX']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'JSX']}
Plug 'tpope/vim-fugitive'

call plug#end()

" autocmd's

augroup pencil
	autocmd!
	autocmd FileType markdown,mkd,text call pencil#init({'wrap': 'hard'})
				\ | call textobj#quote#init()
				\ | call textobj#sentence#init()
augroup END

autocmd BufNewFile, BufReadPost *.md set filetype=markdown
autocmd BufNewFile, BufReadPost *.md set syntax=markdown 

"
" mappings 
"

let mapleader = ","
imap fj <esc>

" van dubbele punt naar puntkomma

nnoremap ; :
vnoremap ; :

" paragrafen herformatteren

nnoremap <silent> Q gqap
xnoremap <silent> Q gq
nnoremap <silent> <leader>Q vapJgqap

" markdown omzetten in pdf

nnoremap <leader>pdf :! pandoc -N --template="C:\Users\Lenovo T420\Dropbox\Schrijfsels\template.tex" % --latex-engine=xelatex -t latex -o %:r.pdf

" navigatie tussen splits

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" specifiek voor javascript

let g:jsx_ext_required = 0 "jsx mogelijk in js files

" alle toolbars en menu's verwijderen

set guioptions-=m  "remove menu bar 
set guioptions-=T  "remove toolbar 
set guioptions-=r  "remove right-hand scroll bar 
set guioptions-=L  "remove left-hand scroll bar

" themes en fonts

set guifont=Consolas:h13

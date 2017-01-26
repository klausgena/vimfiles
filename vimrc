setlocal formatoptions=ant
set encoding=utf-8  
set fileencoding=utf-8
setlocal wrapmargin=0
setlocal noautoindent 
setlocal nosmartindent 
setlocal indentexpr= 
set title 
set spell spelllang=nl

call plug#begin() 

Plug 'tpope/vim-sensible' 
Plug 'reedes/vim-thematic'
Plug 'kana/vim-textobj-user'
Plug 'reedes/vim-pencil' 
Plug 'reedes/vim-textobj-quote', {'for': ['text', 'markdown']} 
Plug 'reedes/vim-textobj-sentence', {'for': ['text', 'markdown']} 
Plug 'reedes/vim-colors-pencil'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'plasticboy/vim-markdown'
Plug 'bling/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'baskerville/bubblegum'
Plug 'vim-pandoc/vim-pandoc'
Plug 'xolox/vim-shell'
Plug 'xolox/vim-misc'

call plug#end()


autocmd BufNewFile, BufReadPost *.md set filetype=markdown
autocmd BufNewFile, BufReadPost *.md set syntax=markdown 

"
" mappings 
"

let mapleader = ","
imap fj <esc>
imap -- –i

" van dubbele punt naar puntkomma

nnoremap ; :
vnoremap ; :

" markdown omzetten in pdf

nnoremap <leader>pdf :! pandoc -N --template="C:\Users\Lenovo T420\Dropbox\Schrijfsels\template.tex" % --latex-engine=xelatex -t latex -o %:r.pdf

" folding in markdown uitschakelen

" navigatie tussen splits

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" alle toolbars en menu's verwijderen

set guioptions-=m  "remove menu bar 
set guioptions-=T  "remove toolbar 
set guioptions-=r  "remove right-hand scroll bar 
set guioptions-=L  "remove left-hand scroll bar

" themes en fonts

set guifont=Consolas:h13

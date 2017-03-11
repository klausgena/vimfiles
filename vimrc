set encoding=utf-8  
set fileencoding=utf-8
setlocal wrapmargin=10
set title 
set spell spelllang=nl
set noerrorbells visualbell t_vb=
set number

" Russisch

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

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
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'bling/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'baskerville/bubblegum'
Plug 'xolox/vim-shell' 
Plug 'xolox/vim-misc' 
Plug 'xolox/vim-session'
Plug 'VOoM'
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'JSX']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'JSX']}
Plug 'moll/vim-node'
Plug 'tpope/vim-fugitive'
Plug 'Townk/vim-autoclose'
Plug 'digitaltoad/vim-pug', {'for': ['pug', 'jade']}
Plug 'vimwiki/vimwiki'

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

" navigatie tussen splits

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDtree openen met ,ne

nmap <leader>ne :NERDTreeFromBookmark

" specifiek voor javascript

let g:jsx_ext_required = 0 "jsx mogelijk in js files

" use jshint

let g:syntastic_javascript_checkers = ['jshint']
let g:javascript_check_on_open = 1

" alle toolbars en menu's verwijderen

set guioptions-=m  "remove menu bar 
set guioptions-=T  "remove toolbar 
set guioptions-=r  "remove right-hand scroll bar 
set guioptions-=L  "remove left-hand scroll bar

" themes en fonts

let g:airline_powerline_fonts = 1
set guifont=SauceCodePro_NF:h12

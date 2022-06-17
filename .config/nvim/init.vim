"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/otakefumiya/.cache/dein/repos/github.com/Shougo/dein.vim


if dein#load_state('~/.cache/dein')

" Required:
  call dein#begin('/Users/otakefumiya/.cache/dein')

" Let dein manage dein
" Required:
  call dein#add('/Users/otakefumiya/.cache/dein/repos/github.com/Shougo/dein.vim')

  let s:toml = '~/.cache/dein/dein.toml'
  call dein#load_toml(s:toml, {'lazy':0})


"call dein#add('junegunn/fzf.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
  call dein#end()
  
  call dein#save_state()
endif

" Required:
filetype plugin indent on
set smartindent
syntax enable
set background=dark
colorscheme iceberg

set number
set cursorcolumn
set hidden
set clipboard+=unnamedplus

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set hls

"fzf
set rtp+=/usr/local/opt/fzf


" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

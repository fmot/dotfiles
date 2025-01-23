if &compatible
  set nocompatible               " Be iMproved
endif

" Add dein to runtime path
set runtimepath+=/Users/otakefumiya/.cache/dein/repos/github.com/Shougo/dein.vim


if dein#load_state('~/.cache/dein')
  call dein#begin('/Users/otakefumiya/.cache/dein')

  " Load plugins from dein.toml
  let s:toml = '~/.cache/dein/dein.toml'
  if filereadable(expand(s:toml))
    call dein#load_toml(s:toml, {'lazy': 0})
  endif

  call dein#end()
  call dein#save_state()
endif

" Ensure plugins are installed
if dein#check_install()
  call dein#install()
endif

" General settings
filetype plugin indent on
set autoindent
syntax enable
set background=dark

try
  colorscheme iceberg
catch
  colorscheme default
endtry

set number
set cursorcolumn
set hidden
set clipboard+=unnamedplus
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set hls

" Add fzf runtime path
set rtp+=/usr/local/opt/fzf

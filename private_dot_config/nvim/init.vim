set nocompatible
filetype plugin on 
syntax on
set relativenumber
let mapleader = ","

" Spelling
hi clear SpellBad
hi SpellBad cterm=underline
set spell spelllang=en_us

" VimWiki
let g:vimwiki_list = [{'path': '~/vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


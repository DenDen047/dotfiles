
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set nocompatible
set title
set ambiwidth=double
set expandtab
set smartindent
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set statusline+=%{fugitive#statusline()}
" TextEdit
set number
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set list
set listchars=tab:>\
set whichwrap=b,s,h,l,<,>,[,]
set ruler
" Color
" set background=dark
" Search
set incsearch
set hlsearch
" Command
set showcmd
set wildmenu
set cmdheight=2



" NeoBundle setup
set nocompatible
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))
    call neobundle#end()
endif 

NeoBundleFetch 'Shougo/neobundle.vim'

filetype plugin indent on
filetype indent on

call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))
    " molokai
    NeoBundle 'tomasr/molokai'
    " neocomplete
    NeoBundle 'Shougo/neocomplete'
    " tcomment
    NeoBundle 'tomtom/tcomment_vim'
    " check install
    NeoBundleCheck
call neobundle#end()



" Color setting
syntax on
colorscheme molokai
set t_Co=256
"let g:molokai_original = 1
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/


" neocomplete {{{
if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'depends' : 'Shougo/vimproc',
    \ 'autoload' : { 'insert' : 1,}
    \ }
endif
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}

" tcomment
" /*--  comment ON/OFF
" Shift + V
" Ctrl + _  x2



":NeoBundleList
":NeoBundleUpdate
":NeoBundleInstall

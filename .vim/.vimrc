
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:>\
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu




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
call neobundle#end()


" Color setting
syntax enable
colorscheme molokai

let g:molokai_original = 1


":NeoBundleInstall

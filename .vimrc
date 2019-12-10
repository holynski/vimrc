set nocompatible              " be iMproved, required
filetype off                  " required

" All the plugins should be between the begin() and end() calls below
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()           " required

" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" Color scheme
Plugin 'altercation/vim-colors-solarized'

" Toggle comments easily with Ctrl+C
Plugin 'scrooloose/nerdcommenter'

" Use the space bar to jump to a specific place in the buffer
Plugin 'easymotion/vim-easymotion'

" For auto-formatting C/Python/etc
Plugin 'rhysd/vim-clang-format'

" Syntax highlighting for GLSL
Plugin 'tikhomirov/vim-glsl'

" Auto-completion
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

" Set the color scheme
syntax enable
set background=dark
colorscheme solarized

" Enable commenting/uncommenting with Ctrl+C
map <C-C> <plug>NERDCommenterToggle
let g:NERDToggleCheckAllLines = 1

" Change tabs to two spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Automatically change the working directory to the current file
set autochdir

" Set the default search settings
set ignorecase 
set smartcase
set gdefault

" Set the easymotion key
let g:EasyMotion_do_mapping = 0
nmap <Space> <Plug>(easymotion-overwin-f)

" Set the clang-format settings
let g:clang_format#code_style = 'google'

" Enable GLSL syntax highlighting for .fs and .vs filetypes
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

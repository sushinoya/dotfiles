" vim-plug configuration
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zacanger/angr.vim'
let g:airline_theme='angr'

" NERDTree
Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

" Other Plugins
Plug 'junegunn/fzf'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" start nerd-tree when path is a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Appearance
syntax enable
set background=dark
colo onehalfdark
set guifont=Roboto_Mono:h14

" Python autocomplete 
" (https://dev.to/zev/how-i-got-go-to-definition-working-in-vim-in-2019-2ec2)
set tags=tags;/
autocmd BufWritePost *.py silent! !ctags -R --python-kinds=-i --languages=python 2&gt; /dev/null &amp;

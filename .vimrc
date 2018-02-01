if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'https://github.com/pangloss/vim-javascript'
Plug 'tpope/vim-surround'
"   <command><surround object>[count]<surround target>[replacement]
"   commands c=change d=delete y=add
"   cs"' " -> '
"   cs<q>
Plug 'Valloric/YouCompleteMe'
Plug 'Lokaltog/powerline', {'rtp':'powerline/bindings/vim'}

"Plug 'v0rp/ale'

"USAGE  ctrl+ h j k l => Left, Down, Up, Right
"       ctrl+k => Previous split
Plug 'christoomey/vim-tmux-navigator'

"GIT Wrapper
Plug 'tpope/vim-fugitive'

call plug#end()

" ------------------------ PYTHON -----------------------
" enable syntax highlighting
syntax enable
" show line numbers
set number
" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line while writing code
set autoindent
" expand tabs into spaces
set expandtab
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1

set backspace=2
set encoding=utf-8
":set fileencoding=utf-8
"
set background=dark
" Evidenzia ricerche
set hlsearch
" Folding
set foldmethod=syntax
" set foldlevel=1
" set foldclose=all

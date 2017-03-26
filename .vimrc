call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

:set expandtab   # inserisce spazi al posto del tab
:set tabstop=4   # imposta il numero di spazio di un tab
:retab	 # trasforma i tab in spazi
:set shiftwidth=4 # imposta il numero di spazi per l'indentazione

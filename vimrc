" background
" When set to "dark", Vim will try to use colors that look good on a
" dark background.  When set to "light", Vim will try to use colors that
" look good on a light background.  Any other value is illegal.
set background=dark

" expandtab
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set expandtab

" tabstop
" The width of a hard tabstop measured in "spaces" -- effectively the (maximum) 
" width of an actual tab character
set tabstop=4

" shiftwidth
" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

set smartindent
set autoindent

" hlsearch
" When there is a previous search pattern, highlight all its matches.
set hlsearch

" wrap
" wrap line to window size
" set wrap linebreak nolist

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" or just use :nohlsearch or :noh

" number
" show absolute line numbers 
set number


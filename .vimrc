" background
" When set to "dark", Vim will try to use colors that look good on a
" dark background.  When set to "light", Vim will try to use colors that
" look good on a light background.  Any other value is illegal.
set background=dark

" expandtab
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set expandtab

" softtabstop
" Number of spaces that a <Tab> counts for while performing editing operations,
" like inserting a <Tab>.
set softtabstop=4

" shiftwidth
" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

" hlsearch
" When there is a previous search pattern, highlight all its matches.
set hlsearch

set smartindent
set autoindent

" wrap
" wrap line to window size
" set wrap linebreak nolist

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" or just use :nohlsearch or :noh

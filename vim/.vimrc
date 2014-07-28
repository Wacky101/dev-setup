set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set rnu
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme slate
set encoding=utf-8
set listchars=tab:\|_,trail:·
"File tabs always visible
set showtabline=2
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
nmap <C-t> :tabnew<cr>
map <C-t> :tabnew<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
imap <C-t> <ESC>:tabnew<cr>

set backspace=indent,eol,start
"Insert ending bracket or quote
imap { {}<Esc>i
imap ( ()<Esc>i
imap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
nmap <F2> :%s/\s\+$//g <CR>

if has("gui_running")
    set guifont=Monospace\ 9
    set colorcolumn=80
    set lines=65 columns=999
    let g:NERDTreeWinSize=60
    let g:NERDTreeWinPos="right"
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    autocmd BufEnter * set rnu
endif

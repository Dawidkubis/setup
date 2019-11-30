" Plug
call plug#begin()

" utility
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'

" autocompletion
Plug 'rust-lang/rust.vim'
Plug 'maralla/completor.vim'

" looks
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

" autocomplete bindings
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" custom keybinds
nnoremap <F2> :NERDTreeToggle <CR>
nnoremap <F5> :edit <CR>
nnoremap <Tab> :tabnext <CR>
nnoremap <S-Tab> :tabprevious <CR>
nnoremap <C-Space> @q
nmap <silent><leader><space> <plug>NERDCommenterToggle
vmap <silent><leader><space> <plug>NERDCommenterToggle

" neovim settings
set mouse=a
set clipboard+=unnamedplus
set number
set noet ci pi sts=0 sw=4 ts=4
filetype plugin on
set termguicolors

" autocomplete settings
let g:completor_css_omni_trigger = '([\w-]+|@[\w-]*|[\w-]+:\s*[\w-]*)$'
let g:completor_python_binary = '/sbin/python'
let g:completor_racer_binary = '/home/dawidkubis/.cargo/bin/racer'

" looks settings
let g:palenight_terminal_italics=1
let g:airline_theme='palenight'
set background=dark
colorscheme palenight

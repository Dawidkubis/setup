" leader
let mapleader = ","

" Plug
call plug#begin()

" utility
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'racer-rust/vim-racer'

" looks
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drewtempelmeyer/palenight.vim'

" syntax highlighting
Plug 'cespare/vim-toml'

" language support
Plug 'rust-lang/rust.vim'

call plug#end()

" autocomplete bindings
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" custom keybinds
nnoremap <F2> :NERDTreeToggle <CR>
nnoremap <F5> :edit <CR>
nnoremap <Tab> :tabnext <CR>
nnoremap <S-Tab> :tabprevious <CR>
nnoremap <C-Space> @q
map <leader>h :noh<CR>
map <leader>l :!pdflatex %<CR><CR>

" autocomplete settings
let g:deoplete#enable_at_startup = 1
set hidden
let g:racer_cmd = "/home/dawidkubis/.cargo/bin/racer"
let g:racer_insert_paren = 0
set completeopt-=preview

" looks settings
let g:palenight_terminal_italics=1
let g:airline_theme='palenight'
set background=dark
colorscheme palenight

" neovim settings
set mouse=a
set clipboard+=unnamedplus
set number
set termguicolors
syntax enable

" indentation
set tabstop=4
set shiftwidth=4
set noexpandtab

filetype plugin indent off

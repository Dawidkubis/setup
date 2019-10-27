" Plug
call plug#begin()

" utility
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'

" autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'sebastianmarkow/deoplete-rust'                                                           
Plug 'rust-lang/rust.vim'

" looks
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

" deoplete settings
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" custom keybinds
nnoremap <F2> :NERDTreeToggle <CR>
nnoremap <F5> :edit <CR>
nnoremap <Tab> :tabNext <CR>
nnoremap <C-Space> @q

" neovim settings
set mouse=a
set clipboard+=unnamedplus
filetype plugin on
set termguicolors

" deoplete settings
let g:rustfmt_autosave = 1
let g:deoplete#sources#rust#racer_binary='/sbin/racer'                                         
let g:deoplete#sources#rust#rust_source_path='/home/dawidkubis/.rust/rust/src'                 
let g:deoplete#enable_at_startup = 1

" looks settings
let g:palenight_terminal_italics=1
let g:airline_theme='palenight'
set background=dark
colorscheme palenight

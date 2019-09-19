" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

" Plug
call plug#begin()

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'                                                           

call plug#end()

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <F2> :NERDTreeToggle <CR>
nnoremap <Tab> :tabNext <CR>
nnoremap <F3> :!pandoc % -o
nnoremap <C-Space> @q
let g:airline_theme='base16' 

let g:deoplete#sources#rust#racer_binary='/sbin/racer'                                         
let g:deoplete#sources#rust#rust_source_path='/home/dawidkubis/.rust/rust/src'                 
                                                                                               
let g:deoplete#enable_at_startup = 1

colorscheme gruvbox

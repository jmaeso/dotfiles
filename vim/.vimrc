" Specify a directory for plugins
" Make sure you use single quotes
call plug#begin('~/.vim/plugged')

"Tree view
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"Go
Plug 'fatih/vim-go'

" File opener
Plug 'kien/ctrlp.vim'

"status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autoclose brackets
Plug 'Townk/vim-autoclose'

" Themes
Plug 'kristijanhusak/vim-hybrid-material'

" Initialize plugin system
call plug#end()

" ----------
" Leader key
" ----------
let mapleader = ","

" ---------
" REMAPING
" --------

nnoremap <silent> <C-Up> <C-w>k
nnoremap <silent> <C-Down> <C-w>j
nnoremap <silent> <C-Left> <C-w>h
nnoremap <silent> <C-Right> <C-w>l

"CONFIGS

" Ctrlp (file opener)
let g:ctrlp_map = '<leader>o'
let g:ctrlp_working_path_mode = 'ra'

" NERDTree
map <leader>p :NERDTreeToggle<CR>

" Auto-close
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

"Airline-theme
let g:airline_theme = 'hybrid'
set laststatus=2
let g:airline_powerline_fonts = 1

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

colorscheme hybrid_material

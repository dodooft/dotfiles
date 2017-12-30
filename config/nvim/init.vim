call plug#begin('~/.local/share/nvim/plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'chriskempson/base16-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'mgee/lightline-bufferline'
	Plug 'tpope/vim-commentary'
	Plug 'Dimercel/todo-vim'
call plug#end()

" Ui config
set termguicolors
set number
set nuw=4
set mouse=n                   " use mouse
let base16colorspace=256      " access colors present in 256 colorspace
colorscheme base16-onedark
highlight LineNr guibg=Ignore
" Lightline
set noshowmode
set hidden                    " allow buffer switching without saving
set showtabline=2             " always show tabline

let g:lightline                  = { 'colorscheme': 'wombat' }
let g:lightline.tabline          = {'left': [[]], 'right': [['buffers']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" White spaces on grey color
highlight NonText ctermfg=239 guifg=Grey30
set list listchars=tab:\→\ ,nbsp:·,trail:·
" Char to separe words
set iskeyword=!-~,^*,^45,^124,^34,192-255,^_,=
" Tab config
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=0 noexpandtab

" NERD tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeMinimalUI = 1

" Commentary
autocmd FileType c,cpp,verilog setlocal commentstring=\/\/\ %s

" Buffer open on side and bottom
set splitbelow
set splitright

" Keymap config
" Buffers
nnoremap <silent> <C-PageUp>   :bprev<CR>
nnoremap <silent> <C-PageDown> :bnext<CR>
nnoremap <silent> <C-t>        :enew<CR>
nnoremap <silent> <C-q>        :bd<CR>
nnoremap          <A-Up>       <C-W><C-K>
nnoremap          <A-Down>     <C-W><C-J>
nnoremap          <A-Right>    <C-W><C-L>
nnoremap          <A-Left>     <C-W><C-H>
" Terminal
tnoremap          <Esc>        <C-\><C-n>
" Nerdtree
nnoremap <silent> <C-n>        :NERDTreeToggle<CR>
" Move lines
inoremap <silent> <A-Up>       <C-o>:m-2<CR>
inoremap <silent> <A-Down>     <C-o>:m+<CR>
" Delete word
inoremap          <C-E>        <C-o>dw
inoremap          <C-W>        <C-o>dge
" Comment
vnoremap <silent> <C-_>        :Commentary<CR>
nnoremap <silent> <C-_>        :Commentary<CR>
" Commands
command! -nargs=* T 10sp | terminal <args>
command!          TrimSpaces %s/\s\+$//e


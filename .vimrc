let g:enable_bold_font = 1
let g:enable_italic_font = 1

" Editing
set tabstop=2
filetype plugin indent on
set shiftwidth=2
set expandtab
set noequalalways

" Enabling Mouse Integration
set mouse=a

" Enabling command + delete 
inoremap <A-Backspace> <C-w>
cnoremap <A-Backspace> <C-w>

" Enabling option + delete
imap <Esc><BS> <C-w>

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Integrate with system cpliboard
set clipboard=unnamed



" add line numbers
set nu!

"Tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-t> :tabedit<cr>

"Window Swap
nnoremap <silent> <leader>y :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>p :call WindowSwap#DoWindowSwap()<CR>

" Fix backspace
set backspace=indent,eol,start 
syntax on
syntax enable

" Applying colorscheme
if (has('termguicolors'))
  set termguicolors
endif
colorscheme archman
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Adding option + arrow shortcuts
:map <ESC>f el
:imap <ESC>b <C-o>b
:imap <ESC>f <C-o>e
:cmap <ESC>f el


"""""""""""""""""""""""""""""""""" 
" Vim plugins via Plug
"""""""""""""""""""""""""""""""""" 
call plug#begin('~/.vim/plugged')

" Applying defaults
Plug 'tpope/vim-sensible'

" Applying theme
Plug 'junegunn/seoul256.vim'

" GIT
Plug 'tpope/vim-fugitive'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'vobornik/vim-mql4'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' 

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" ZFZ
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Golang
Plug 'fatih/vim-go', { 'do' : ':GoUpdateBinaries' }

" FZF
Plug '/usr/local/opt/fzf'

" ACK
Plug 'mileszs/ack.vim'

"Windowswap
Plug 'wesQ3/vim-windowswap'

" NerdTreee
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

set clipboard=unnamed
autocmd StdinReadPre * let s:std_in=1
autocmd StdinReadPre * let s:std_in=1
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Initialize plugin system
call plug#end()

" Applying Theme Configs
let g:seoul256_background = 233
colo seoul256
set background=dark

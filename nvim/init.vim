let g:enable_bold_font = 1
let g:enable_italic_font = 1

" Enconding
set encoding=UTF-8

" Editing
set tabstop=2
"filetype plugin indent on
set shiftwidth=2
set expandtab
set noequalalways
set backspace=indent,eol,start

" Enabling Mouse Integration
set mouse=a

" Enabling command + delete 
inoremap <A-Backspace> <C-w>
cnoremap <A-Backspace> <C-w>

" Enabling option + delete
imap <Esc><BS> <C-w>

" Integrate with system cpliboard
set clipboard=unnamedplus
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" add line numbers
set nu!

" Fix backspace
syntax on
syntax enable


"""""""""""""""""""""""""""""""""" 
" Vim plugins via Plug
"""""""""""""""""""""""""""""""""" 
call plug#begin('~/.local/share/nvim/site/plugged')

" Applying defaults
Plug 'tpope/vim-sensible'

" Applying theme
Plug 'junegunn/seoul256.vim'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'zivyangll/git-blame.vim'
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'vobornik/vim-mql4'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"Nerdtree show hidden files by default
let g:NERDTreeShowHidden=1

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
set rtp+=/usr/local/opt/fzf
:nnoremap <leader>h :FZF<CR>

Plug 'ctrlpvim/ctrlp.vim'

" Golang
Plug 'fatih/vim-go', { 'do' : ':GoUpdateBinaries' }
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1        
au filetype go inoremap <buffer> . .<C-x><C-o>
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 50vnew',
      \ 'stack':      'rightbelow 20new',
      \ 'goroutines': 'topleft 40vnew',
      \ 'out': 'botright new',
\ }
:nnoremap <leader>z :GoDebugStart<CR> 
:nnoremap <leader>x :GoDebugStop<CR> 
:nnoremap <leader>c :GoDebugStep<CR> 
:nnoremap <leader>v :GoDebugStepout<CR> 
:nnoremap <leader>b :GoDebugBreakpoint<CR> 
:nnoremap <leader>n :GoDebugNext<CR>
:nnoremap <leader>m :GoDebugContinue<CR>
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" ACK
Plug 'mileszs/ack.vim'

" Grepper
Plug 'mhinz/vim-grepper'
:nnoremap <leader>g :Grepper<CR>

"Windowswap
Plug 'wesQ3/vim-windowswap'

"Ag
Plug 'numkil/ag.nvim'

" NerdTreee
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

autocmd StdinReadPre * let s:std_in=1
autocmd StdinReadPre * let s:std_in=1
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Tag line
Plug 'vim-airline/vim-airline'

"Gitgutter
Plug 'airblade/vim-gitgutter'

" Indent guides
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

" Vim-Devicon
Plug 'ryanoasis/vim-devicons'
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
set guifont=Fira\ Code:h12

" Theme
Plug 'tomasiser/vim-code-dark'

" Initialize plugin system
call plug#end()


" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Applying colorscheme
colorscheme codedark
let g:airline_theme = 'codedark'

if (has('termguicolors'))
  set termguicolors
endif
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

nnoremap <silent> <cmd>p :Telescope find_files<cr>

" Styling
let g:enable_bold_font = 1
let g:enable_italic_font = 1
set background=dark
colorscheme hybrid_material

" Editing
set tabstop=2
filetype plugin indent on
set shiftwidth=2
set expandtab

" Vim plugins
call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippet'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

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

" Initialize plugin system
call plug#end()

"Dev Mode
function! DevMode()
	set nu!
	let g:netrw_banner = 0
	let g:netrw_liststyle = 3
	let g:netrw_browse_split = 4
	let g:netrw_altv = 1
	let g:netrw_winsize = 25
  let g:ackprg = 'ag --vimgrep'
  :silent Vexplore
	echom "DevMode turned on"
endfunction
nmap <silent>  <C-p>  :call DevMode()<CR>

"Tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-t> :tabedit<cr>


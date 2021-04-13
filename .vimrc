set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set nocompatible

call plug#begin('~/.vim/plugged')

" IDE
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/gruvbox-material'
"Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
"Plug 'lifepillar/vim-gruvbox8'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kiteco/vim-plugin'
Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'mlaursen/vim-react-snippets'
"Plug 'shinchu/lightline-gruvbox.vim'
Plug 'alvan/vim-closetag'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'

if has('nvim')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

"if exists('g:vscode')
    " VSCode extension
"else
    " ordinary neovim
"endif

"Python38
let g:python3_host_prog = expand('C:\Python38-32\python')

"Utilsnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"text
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"NERDTree
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowLineNumbers = 1

"gruvbox
"let g:gruvbox_contrast_dark = "medium"
"let g:gruvbox_invert_selection = 0
"colorscheme gruvbox
"set background=dark
"colorscheme gruvbox8
"if has('termguicolors')
 "set termguicolors
"endif
 if has('termguicolors')
      set termguicolors
    endif
    set background=dark
    let g:gruvbox_material_background = 'medium'
    let g:gruvbox_material_palette = 'mix'
    let g:gruvbox_material_enable_italic = 1
    let g:gruvbox_material_disable_italic_comment = 1
    colorscheme gruvbox-material
"
"lightline
let g:lightline = {
      \ 'active' : {
      \   'left':[['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right':[['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive' : {
      \   'left':[['inactive'], ['relativepath']],
      \   'right':[['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox_material',
      \  'subseparator': {
      \    'left': '',
      \	   'right': ''
      \ }
      \}

    "let g:lightline.colorscheme = 'gruvbox'

"kite
let g:kite_supported_languages = ['python', 'javascript']
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType python let b:coc_suggest_disable = 1

"if &filetype == 'javascript' || &filetype == 'python'
"  inoremap <c-space> <C-x><C-u>
"else
"  inoremap <silent><expr> <c-space> coc"refresh"()
"endif

"let g:kite_tab_complete=1

"JSDocs
"let g:javascript_plugin_jsdoc = 1

"coc
"let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
"nmap <silent> gd <Plug> (coc-definition)
"nmap <silent> gy <Plug> (coc-type-definition)
"nmap <silent> gi <Plug> (coc-implementation)
"nmap <silent> gr <Plug> (coc-references)

"FZF: Fast Search
let $FZF_DEFAULT_COMMAND = 'ag --ignore node_modules -g ""'

"Delay Signify
set updatetime=100

"Terminal config
set splitright
set splitbelow

"Shortcuts
"MapLeader = SpaceBar
let mapleader = " "
tnoremap <Esc> <C-\><C-n>
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://cmd
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

"easymotion
nmap s <Plug>(easymotion-s2)
map  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"NERDTreeToggle
nmap <silent><C-b> :NERDTreeToggle<CR>

"Save & Quit fast
nmap <Leader>w :w <CR>
nmap <Leader>q :q <CR>

"Moving on panes
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


"FZT Fast Search / Splitting
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-n': 'vsplit'
  \}

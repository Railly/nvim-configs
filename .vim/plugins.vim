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
set backup 
set backupdir=~/configs/VimTemp 
"set shell=C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe
set shell=powershell
set shellcmdflag=\ -c
set shellxquote=
"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-15.(%l,%c%V%)\ %P
set nocompatible

call plug#begin('~/configs/.vim/plugged')

" IDE
Plug 'thosakwe/vim-flutter'
Plug 'styled-components/vim-styled-components', { 'branch': 'develop' }
Plug 'sheerun/vim-polyglot'
Plug 'uiiaoo/java-syntax.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sainnhe/gruvbox-material'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'wakatime/vim-wakatime'


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

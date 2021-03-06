"Shortcuts
"MapLeader = SpaceBar
let mapleader = " "
tnoremap <Esc> <C-\><C-n>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://powershell
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
nmap <Leader>r :NERDTreeRefreshRoot<CR>

"Sorting visual line
vmap <Leader>s :'<,'>sort<CR>

"Save & Quit fast
nmap <Leader>w :w <CR>
nmap <Leader>q :q <CR>

"Moving on panes
"tnoremap <A-h> <C-\><C-n><C-w>h
"tnoremap <A-j> <C-\><C-n><C-w>j
"tnoremap <A-k> <C-\><C-n><C-w>k
"tnoremap <A-l> <C-\><C-n><C-w>l
"nnoremap <A-h> <C-w>h
"nnoremap <A-j> <C-w>j
"nnoremap <A-k> <C-w>k
"nnoremap <A-l> <C-w>l


"FZT Fast Search / Splitting
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-n': 'vsplit'
  \}

"kite
"if &filetype == 'javascript' || &filetype == 'python'
      "inoremap <c-space> <C-x><C-u>
"else
      "inoremap <silent><expr> <c-space> coc"refresh"()
"endif

"coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"

"coc
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

"wakatime
nmap <Leader>t :WakaTimeToday<CR>

"Flutter
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fl :FlutterHotReload<cr>
nnoremap <leader>fr :FlutterHotRestart<cr>
nnoremap <leader>fd :FlutterVisualDebug<cr>

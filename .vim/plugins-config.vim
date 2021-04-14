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
let NERDTreeShowHidden = 1

"gruvbox
 if has('termguicolors')
      set termguicolors
endif

set background=dark
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_enable_bold = 1

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


"kite
let g:kite_supported_languages = ['python', 'javascript']
let g:kite_tab_complete=1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType python let b:coc_suggest_disable = 1


"JSDocs
let g:javascript_plugin_jsdoc = 1

"coc
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']


"FZF: Fast Search
let $FZF_DEFAULT_COMMAND = 'ag --ignore node_modules -g ""'

"Delay Signify
set updatetime=100

"Terminal config
set splitright
set splitbelow

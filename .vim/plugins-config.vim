"Python38
let g:python3_host_prog = expand('C:\Python38-32\python')

"java-syntax
highlight link javaIdentifier NONE

"Utilsnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"text
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx, *.xml'

"NERDTree
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeShowHidden = 1
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"gruvbox
 if has('termguicolors')
      set termguicolors
endif

set background=dark

let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_enable_italic = 1
"let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_visual = 'reverse'

colorscheme gruvbox-material

"one-dark
"let g:onedark_color_overrides = {
"\ "black": {"gui": "NONE", "cterm": "235", "cterm16": "0" },
"\ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
"\}
"colorscheme onedark


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
"let g:kite_supported_languages = ['python', 'javascript', 'java']
"let g:kite_tab_complete=1
"let g:kite_snippets=0
"autocmd FileType javascript let b:coc_suggest_disable = 1
"autocmd FileType python let b:coc_suggest_disable = 1

"custom snippets
iabbrev imr import React from 'react'
iabbrev imsc import styled from 'styled-components'
iabbrev pp ${props => props}
iabbrev con@ console.log()<Left><Left>
iabbrev @@ railly_2009@hotmail.com
iabbrev @# railly.hugo@unmsm.edu.pe
iabbrev fc <Esc>bvediexport const <C-o>P = () => {<CR>return(<CR><Tab><BS><Space>
iabbrev sc <Esc>bvediexport const <C-o>P = styled.div`<CR>
iabbrev cc <Esc>bvedi<<C-o>P><CR><Tab><CR><Up><Right>
iabbrev cs <Esc>bvedi<<C-o>P /><Left><Left><Left>
iabbrev im <Esc>bvediimport { <C-o>P } from './<C-o>P'
let g:UltiSnipsExpandTrigger="<C-l>"

"JSDocs
let g:javascript_plugin_jsdoc = 1

"coc
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-prettier']

"FZF: Fast Search
let $FZF_DEFAULT_COMMAND = 'ag --ignore node_modules -g ""'

"Delay Signify
set updatetime=100

"Terminal config
set splitright
set splitbelow

    autocmd User Startified setlocal cursorline
    let g:startify_session_dir = '~/configs/session/'
    let g:startify_enable_special      = 0
    let g:startify_files_number        = 4
    let g:startify_relative_path       = 1
    let g:startify_change_to_dir       = 1
    let g:startify_update_oldfiles     = 1
    let g:startify_session_autoload    = 1
    let g:startify_session_persistence = 1


    let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ 'bundle/.*/doc',
            \ '/data/repo/neovim/runtime/doc',
            \ '/Users/mhi/local/vim/share/vim/vim74/doc',
            \ ]

  let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

    let g:startify_bookmarks = [
            \ { 'c': '~/configs/.vimrc' },
            \ 'C:\workspace\',
            \ ]

    let g:startify_custom_header =
            \ startify#fortune#cowsay('', '═','=','╔','<','>','╚')

    let g:startify_custom_footer =
           \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

    hi StartifyBracket ctermfg=240
    hi StartifyFile    ctermfg=147
    hi StartifyFooter  ctermfg=240
    hi StartifyHeader  ctermfg=114
    hi StartifyNumber  ctermfg=215
    hi StartifyPath    ctermfg=245
    hi StartifySlash   ctermfg=240
    hi StartifySpecial ctermfg=240

"Polyglot

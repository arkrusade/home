"  mark line
set encoding=utf-8

colorscheme desert
set number
syntax on
set showcmd

noremap <c-j> J
noremap J 5j
noremap K 5k
noremap Y y$
nnoremap <c-l> yyp
nnoremap <c-L> yyP

" insert mode de-tab
inoremap <S-Tab> <C-d>
" command mode de-tab
" nnoremap <C-S-Tab> <<

" Un-indent in Visual mode with Shift\Tab
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" ON pressing tab, insert 4 spaces
set expandtab

" python-mode
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_doc_bind = '<c-k>'
let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_rope_show_doc_bind = '<leader>pd'
let g:pymode_rope_goto_definition_bind = '<leader>pg'
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_rename_bind = '<leader>pr'
let g:pymode_rope_module_to_package_bind = '<leader>p1p'
let g:pymode_rope_extract_method_bind = '<leader>pm'
let g:pymode_rope_extract_variable_bind = '<leader>pl'
let g:pymode_rope_use_function_bind = '<leader>pu'
let g:pymode_rope_move_bind = '<leader>pv'
let g:pymode_rope_change_signature_bind = '<leader>ps'

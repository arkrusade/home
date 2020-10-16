"  mark line
set encoding=utf-8

" colorscheme desert
" colorscheme inkpot

let g:dracula_colorterm = 0
packadd! dracula
colorscheme dracula

set termguicolors
set number
set nocompatible
syntax enable
set showcmd

" shows if line extends or precedes visible screen
set list
set lcs=tab:»·,precedes:>,extends:<,trail:·

set path+=**
" Show file options above the command line
set wildmenu

" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

" Set the working directory to wherever the open file lives
set autochdir

filetype plugin on
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" ON pressing tab, insert 4 spaces
set expandtab

noremap <c-j> J
noremap J 5j
noremap K 5k
noremap Y y$
nnoremap <c-l> yyp

" copy (write) highlighted text to .vimbuffer
vnoremap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
" noremap <C-v> <C-v>
" vnoremap <C-v> <C-v>
" nnoremap <C-v> <C-v>
" noremap <C-v> :r ~/.vimbuffer<CR>

" insert mode de-tab
inoremap <S-Tab> <C-d>
" command mode de-tab
" nnoremap <C-S-Tab> <<

" Un-indent in Visual mode with Shift\Tab
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" python-mode
" let g:pymode = 1
" let g:pymode_python = 'python3'
let g:pymode_doc_bind = '<c-k>'
" let g:pymode_run_bind = '<leader>r'
" let g:pymode_breakpoint_bind = '<leader>b'
" let g:pymode_rope_show_doc_bind = '<leader>pd'
" let g:pymode_rope_goto_definition_bind = '<leader>pg'
" let g:pymode_rope_goto_definition_cmd = 'new'
" let g:pymode_rope_rename_bind = '<leader>pr'
" let g:pymode_rope_module_to_package_bind = '<leader>p1p'
" let g:pymode_rope_extract_method_bind = '<leader>pm'
" let g:pymode_rope_extract_variable_bind = '<leader>pl'
" let g:pymode_rope_use_function_bind = '<leader>pu'
" let g:pymode_rope_move_bind = '<leader>pv'
" let g:pymode_rope_change_signature_bind = '<leader>ps'

" ignore line too long
" let g:pymode_lint_ignore = "E501,W"

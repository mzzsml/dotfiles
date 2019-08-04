" vim plugins
call plug#begin()

" Themes
" -------------------------------------
Plug 'joshdick/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'arcticicestudio/nord-vim'

" Fuzzy finder for vim
" -------------------------------------
Plug 'junegunn/fzf.vim'

" Status Lines
" -------------------------------------
Plug 'itchyny/lightline.vim'

" Language pack
" -------------------------------------
" Snippets
" Plug 'honza/vim-snippets.vim'

" Syntax highlighting
" -------------------------------------
Plug 'sheerun/vim-polyglot'

" Auto close brackets and things
" -------------------------------------
Plug 'tpope/vim-surround'

" Improve moving in vim
" -------------------------------------
Plug 'matze/vim-move'

" Git
" -------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

call plug#end()

syntax on
set number
set relativenumber
set title
set cursorline

"Set nvim to not highlight long lines. Useful for reducing lag when opening
"minified files
set synmaxcol=500

" Draw the certical line
set textwidth=80
set colorcolumn=+1

" Turn off swapfiles
set noswapfile
set nobackup
set nowb

" Indent using two spaces.
set softtabstop=4
set tabstop=4 " width of tab char
set shiftwidth=4
"set noexpandtab

" view tabs and spaces
set list

" Lightline
set laststatus=2
set noshowmode
if !has('gui_running')
  set t_Co=256
endif

" Enable truecolor
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" Set colorscheme
set background=dark
colorscheme nord
"let g:material_theme_style = 'default'
let g:lightline = { 'colorscheme': 'nord' }

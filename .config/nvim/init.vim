" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝




" ------------------------------------------------------------------------------
" PLUGIN SECTION
" ------------------------------------------------------------------------------
call plug#begin()

" ------------------------------------------------------------------------------
" APPEARENCE
" ------------------------------------------------------------------------------
" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'arcticicestudio/nord-vim'

" Status line
Plug 'itchyny/lightline.vim'

" Custom startpage
Plug 'mhinz/vim-startify'

" Indentation lines
Plug 'Yggdroot/indentLine'


" ------------------------------------------------------------------------------
" CORE
" ------------------------------------------------------------------------------
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Snippets
" Plug 'honza/vim-snippets.vim'

" Better syntax highlighting
Plug 'sheerun/vim-polyglot'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Move lines and selections up and down
Plug 'matze/vim-move'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'

call plug#end()
" ------------------------------------------------------------------------------
" END OF PLUGIN SECTION
" ------------------------------------------------------------------------------



" ------------------------------------------------------------------------------
" APPEARENCE
" ------------------------------------------------------------------------------

syntax on
set number
set relativenumber
set title
set cursorline

"Set nvim to not highlight long lines. Useful for reducing lag when opening
"minified files
set synmaxcol=500

" Vertical line
set textwidth=80
set colorcolumn=+1

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
let g:lightline = { 'colorscheme': 'nord' }




" ------------------------------------------------------------------------------
" CORE
" ------------------------------------------------------------------------------

" Turn off swapfiles
set noswapfile
set nobackup
set nowb

" Indent using two spaces.
set softtabstop=4

" set the width of tab char
set tabstop=4
set shiftwidth=4
"set noexpandtab

" view tabs and spaces
set list

"let g:indentLine_setColors = 0

syntax on
set number
set nocompatible
set encoding=utf-8
filetype plugin indent on
call plug#begin('~/.vim/plugged')
"{{ Configuring NerdTree
Plug 'scrooloose/nerdtree'

  " ---> to hide unwanted files <---
  let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
" ---> show hidden files <---
  let NERDTreeShowHidden=1
" ---> autostart nerd-tree when you start vim <---
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif
" ---> toggling nerd-tree using Ctrl-N <---
  map <C-n> :NERDTreeToggle<CR>
"}}

"{{ Configuring YouCompleteMe
Plug 'valloric/youcompleteme', { 'do': './install.py' }

  " ---> youcompleteme configuration <---
  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

  " ---> compatibility with another plugin (ultisnips) <---
  let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>' ]
  let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>' ]
  let g:SuperTabDefaultCompletionType = '<C-n>'
" ---> disable preview window <---
  set completeopt-=preview
" ---> navigating to the definition of a a symbol <---
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"}}

"{{ Configuring CtrlP
Plug 'ctrlpvim/ctrlp.vim'
"}}

"{{ Configuring UltiSnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"}}

"{{ Git integration
" ---> git commands within vim <---
Plug 'tpope/vim-fugitive'
" ---> git changes on the gutter <---
Plug 'airblade/vim-gitgutter'
" ---> nerdtree git changes <---
Plug 'Xuyuanp/nerdtree-git-plugin'
"}}

"{{ Color-scheme
Plug 'morhetz/gruvbox'
  set background=dark
  colorscheme gruvbox
  let g:gruvbox_contrast_dark='default'
"}}

"{{ Autopairs
" ---> closing XML tags <---
Plug 'alvan/vim-closetag'
" ---> files on which to activate tags auto-closing <---
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
" ---> closing braces and brackets <---
Plug 'jiangmiao/auto-pairs'
"}}

"{{ TMux - Vim integration
Plug 'christoomey/vim-tmux-navigator'
"}}

call plug#end()

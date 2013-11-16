" Gerob Kimball 2013 .vimrc
" Based on a .vimrc by Philip Thrasher

set nocompatible " Fuck VI... That's for grandpas.
filetype off

" Start AutoVundle
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
" No Readme? No Vundle. Let's install it.
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" =======================Vim Plugins===========================================
" Vundle let's you grab plugins straight off of github, just specify the bundle
" in the following format:
" Bundle 'githubUsername/repoName'

" Let vundle manage itself:
Bundle 'gmarik/vundle' 
" Fuzzy finder -- absolutely must have
Bundle 'kien/ctrlp.vim' 
" Support for easily toggling comments
Bundle 'tpope/vim-commentary' 
" NERDTree - Improved File Explorer
Bundle 'scrooloose/nerdtree' 
" Proper JSON filetype detection, and support
Bundle 'leshill/vim-json' 
" Javascript indentation fixes
Bundle 'pangloss/vim-javascript' 
" HTML fixes
Bundle 'indenthtml.vim' 
" My color scheme
Bundle 'vim-scripts/xoria256.vim' 
" Git powered by Vim
Bundle 'tpope/vim-fugitive' 
" Status bar
Bundle 'bling/vim-airline' 
" Emmet auto-completion for HTML
Bundle 'mattn/emmet-vim' 
" Show git changes in the gutter
Bundle 'airblade/vim-gitgutter' 
" Tab completion for Vim
Bundle 'ervandew/supertab' 
" Auto-completion for many languages
Bundle 'Valloric/YouCompleteMe'
" Syntax highlighting that ties in with the above
Bundle 'scrooloose/syntastic'

" ========== ^^ Bundles Above Here ^^ ========================================
if iCanHazVundle == 0
   echo "Installing Bundles, please ignore key map error messages"
   echo ""
   :BundleInstall
endif
" Done setting up Vundle - the vim plugin bundler
" end AutoVundle

" ==========================Vim Settings=======================================
" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.
set nu " Set line numbers
set mouse=nicr " Use the mouse for stuff but hold alt to select 

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" =========================Custom Mappings=====================================
" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

" So we don't have to reach for escape to leave insert mode.
inoremap jj <esc>

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>


" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

" ========================Plugin settings==================================
" Below are some 'sane' (IMHO) defaults for a couple of the above plugins I
" referenced.

" Map the key for toggling comments with vim-commentary
nnoremap <leader>c <Plug>CommentaryLine

" Toggle NERDTree
map <leader>m :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0

" Remap ctrlp to ctrl-t - consider remaping Caps Lock to Ctrl
let g:ctrlp_map = '<c-t>'

" Let ctrlp have up to 30 results.
let g:ctrlp_max_height = 30

" Syntax highlighting for PHP
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" Finally the color scheme. 
colorscheme xoria256


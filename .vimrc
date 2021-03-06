set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" global search by ack
Plugin 'mileszs/ack.vim'
" Plug('jiangmiao/auto-pairs')
Plugin 'scrooloose/nerdtree'
" comments
Plugin 'tomtom/tcomment_vim'
" autocomplete
Plugin 'lifepillar/vim-mucomplete'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-bundler'
Plugin 'vim-syntastic/syntastic'

" Automaticaly add end in ruby scrips
Plugin 'tpope/vim-endwise'
" Show changed lines from git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rbenv'
Plugin 'vim-ruby/vim-ruby'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'tpope/vim-surround'
Plugin 'janko-m/vim-test'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-fugitive'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'
Plugin 'Raimondi/delimitMate'
Plugin 'junegunn/fzf'

" TypeScript syntax
Plugin 'othree/yats.vim'

" crystal syntax support.qweasd qwe
Plugin 'rhysd/vim-crystal'

" reslove git conflicts
Plugin 'christoomey/vim-conflicted'

" improved javscript syntax
Plugin 'othree/yajs.vim'
" Plugin 'pangloss/vim-javascript'

" jsx syntax support
Plugin 'mxw/vim-jsx'

" multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" use local eslint config
Plugin 'mtscout6/syntastic-local-eslint.vim'

" base16 color schemes
Plugin 'chriskempson/base16-vim'

" onedark colorscheme
Plugin 'rakr/vim-one'

"Identation
Plugin 'Yggdroot/indentLine'

"Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Rubocop plugin
Plugin 'lad/vim-rubocop'

"Glyph icons plugin
Plugin 'ryanoasis/vim-devicons'

call vundle#end()


"============================================================================
" ===================== General settings ====================================
"============================================================================

nnoremap <space> <nop>

" use the space key as our leader. put this near the top of your vimrc
let mapleader = "\<space>"
" r For auto indent filetype plugin indent on
filetype on
"syntax highlighting
syntax on
" Use vim, not vi api
set nocompatible

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" Command history
set history=500

" Remove escape delay http://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

" Always show cursor
set ruler

" Show incomplete commands
set showcmd

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search if term(s) are lowercase
set ignorecase

" Search with case sensitivity if term(s) are upper or mixed case
set smartcase

" Turn word wrap off
set nowrap

set autoindent

set smartindent


" Performance
syntax sync maxlines=256
syntax enable
set synmaxcol=120

" Auto remove trailing blank spaces on each save
autocmd BufWritePre * :%s/\s\+$//e

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

set background=dark

"Theme for status bar
let g:airline_theme='durant'


"Base16 hook
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Access colors present in 256 colorspace
let base16colorspace=256
set t_Co=256

"
" Always show statusline
set laststatus=2

" Always display the tabline, even if there is only one tab
" set showtabline=2

" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

" Enable mouse
set mouse=a

" set number of lines
set nu!

" tabs settinngs
set ts=2
set sts=0
set sw=2

" Tabs settins
" Convert tabs to spaces, all file types
set expandtab

" Set tab size in spaces (this is for manual indenting)
set tabstop=2

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=2

" Turn on line numbers
set number

" UTF encoding
set encoding=utf-8

set spelllang=en

" Autoload files that have changed outside of vim
set autoread

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" Automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" Highlight a matching [{()}?P] when cursor is placed on start/end character
set showmatch

" Complete files like a shell.
set wildmode=list:longest

" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title

set clipboard+=unnamed

set cursorcolumn
set cursorline

"============================================================================
"====================== Mapings ============================================
"============================================================================

" Remap VIM 0 to first non-blank character
nnoremap 0 ^

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Save current file
nnoremap <Leader>w :w<CR>

" Go to the begining of line
noremap H ^

" Go to the end of line
noremap L $

" Run 'git blame' on a selection of code
nmap <leader>gb :Gblame<CR>

" Run 'git status' for current file
nmap <leader>gs :Gstatus<CR>

" Change surround double quotes to plain quotes
nmap <Leader>' cs"'<CR>

" Map text align to tab button in visual mode
vnoremap <TAB> =

" Expand word to tag
nmap <F4> byei<<ESC>ea></<C-R>0><ESC>bba
" Faster search
nnoremap s /

" Fix indenting selection
vnoremap < <gv
vnoremap > >gv

" Open a new tab with Ctrl+T
map <C-t> <esc>:tabnew<CR>

" For indenting code
map <leader>i mmgg=G`m<CR>

" Disable selection
nnoremap <leader>n :nohl<CR>

" Enter replace command
nnoremap <leader>r :%s/

" Edit vim config in vertical split
nnoremap <leader>ve :vsplit $MYVIMRC<cr>

" Reload vim config
nnoremap <leader>vr :source $MYVIMRC<cr>

" Delete all lines beginning with '#' regardless of leading space.
map <leader>d :g/^\s*#.*/d<CR>:nohl<CR>

" Reload servers
nnoremap q :call RestartServers() <CR>

" Reload chrome tab
nnoremap R :call ReloadActiveChromeTab() <CR>

" Move up and down by visible lines if current line is wrapped
nmap j gj
nmap k gk

" zoom a vim pane, <C-w>= to re-balance
" nmap <C-w><cr> <C-W>\| <C-W>_

" nnoremap <c-x> gt

" Expand window
nmap " <C-W>\| <C-W>_

" Expand window
nnoremap m :ToggleCurrentWindowZoom <CR>

" re-balance panes
nmap ' <C-W>=

" Faster close windows and quit
nnoremap <C-c> <C-w>q

" Test runner mappings
nnoremap <silent> <leader>t :TestNearest<CR>
nnoremap <silent> <leader>j :TestNearest<CR>
nnoremap <silent> <leader>T :TestFile<CR>
nnoremap <silent> <leader>a :TestSuite<CR>
nnoremap <silent> <leader>l :TestLast<CR>

nnoremap <Leader>vr :so $MYVIMRC<CR>
nnoremap <Leader>ve :vsplit $MYVIMRC<CR>

" "Go to test file
" nmap t :A<CR>

" Go to associated file
nmap <Leader>e :R<CR>

" Tcomment
vmap \ :TComment<CR>
nnoremap \ :TComment<CR>

" fzf
set rtp+=~/.fzf

" Fuzzy-find with fzf
nmap <C-p> :FZ<cr>

" Ack mappings
nnoremap ! :Ack<SPACE>
" noremap ! :Ack <cr>

" Ack: To go to the next search result
map <leader>] :cn<cr>
" Ack: To go to the previous search results
map <leader>[ :cp<cr>

" fzf Ag
noremap <Leader>p :Ag <cr>
noremap <Leader>m :FZF app/models<CR>
nnoremap <silent> <Leader>f :Ag <C-R><C-W><CR>

"============================================================================
"====================== Plugins settings ====================================
"============================================================================

"Open ruby test in tmux pane
let test#strategy = "vimux"

" Use vertical tmux slpit for vimux commands
let g:VimuxOrientation = "h"

" Open vimux tmux pane with 50% width of screen
let g:VimuxHeight = "50"

" Use bundle exec for ruby tests
let test#ruby#bundle_exec = 1

" Ack (the_silver_searcher / ag)
let g:ackprg="ag"

" ===================== Fugitive settings ====================================
" Froce to split window verticaly when fugitive opens git diff
set diffopt+=vertical

" ===================== Nerdtree settings  ====================================
let NERDTreeShowHidden=1
let NERDTreeWinSize=40
nnoremap <C-\> <NOP>
autocmd VimEnter * nnoremap <C-\> :NERDTreeToggle<CR>

" ===================== Syntastic settings  ====================================

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'
let g:syntastic_ruby_checkers = ["mri", "rubocop"]

" ===================== vim-jsx ====================================
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" vim-jsx
" By default, JSX syntax highlighting and indenting will be enabled only for
" files with the .jsx extension. If you would like JSX in .js files, add
let g:jsx_ext_required = 0

" ===================== Lightline settings  ====================================

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['filename', 'modified'] ],
      \   'right': [['total_lines']],
      \ },
      \ 'inactive': {
      \   'left': [['filename'] ],
      \   'right': [['total_lines']],
      \ },
      \ 'component': {
      \   'total_lines': ' %l/%L '
      \ },
      \}
"============================================================================
"====================== Commands ===========================================
"============================================================================
command! ToggleCurrentWindowZoom :call ToggleCurrentWindowZoom()

"============================================================================
"====================== Functions ===========================================
"============================================================================

function! RestartServers()
  execute system("tmux send-keys -t 2.left C-c \" bundle exec rails s\" C-m")
  execute system("tmux send-keys -t 3.left C-c \" bundle exec rails s -p 3001\" C-m")
  execute system("tmux send-keys -t 5.left C-c \" bundle exec sidekiq\" C-m")
  echo "Servers reloaded"
endfunction

function! ReloadActiveChromeTab()
  if !exists("g:currentTerminalEmulator")
    let g:currentTerminalEmulator = system("xprop -root | grep \"_NET_ACTIVE_WINDOW(WINDOW)\"| awk '{print $5}'")
  endif

  execute system("xdotool search --onlyvisible --class Chrome windowfocus key F5")
  execute system("xdotool windowfocus " . g:currentTerminalEmulator)
  echo "Chrome tab reloaded"
endfunction

if !exists("t:currentWindowZoomed")
  let t:currentWindowZoomed = 0
endif

" toggle zoom current window
function! ToggleCurrentWindowZoom()
  if t:currentWindowZoomed
    execute "normal \'"
    let t:currentWindowZoomed = 0
  else
    :NERDTreeClose
    execute "normal \""
    let t:currentWindowZoomed = 1
  endif
endfunction

" ===================== FZF-AG functions  ====================================

function! s:ag_to_qf(line)
  let parts = split(a:line, ':')
  return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
        \ 'text': join(parts[3:], ':')}
endfunction

function! s:ag_handler(lines)
  if len(a:lines) < 2 | return | endif

  let cmd = get({'ctrl-x': 'split',
               \ 'ctrl-v': 'vertical split',
               \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
  let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

  let first = list[0]
  execute cmd escape(first.filename, ' %#\')
  execute first.lnum
  execute 'normal!' first.col.'|zz'

  if len(list) > 1
    call setqflist(list)
    copen
    wincmd p
  endif
endfunction

command! -nargs=* Ag call fzf#run({
\ 'source':  printf('ag --nogroup --column --color "%s"',
\                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
\            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
\            '--color hl:68,hl+:110',
\ 'down':    '50%'
\ })

" ========================== Type Script Syntax ==============================

autocmd BufRead,BufNewFile *.ts set syntax=typescript

" =============================== Rubocop ====================================

nnoremap    <C-r>       :RubocopThis<CR>
nnoremap    <C-o>       :RubocopAll<CR>

" ============================= Glyph icons =================================
set guifont=Droid\ Sans\ Mono\ \for\ Powerline\ Nerd\ Fond\ Complete

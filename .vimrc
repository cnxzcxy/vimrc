"No vi compatible
set nocompatible

autocmd BufWritePost * :silent :call SyncUploadFile()
"autocmd BufWritePost * :call SyncUploadFile()

"set noimdisable
"autocmd! InsertLeave * set imdisable|set iminsert=0
"autocmd! InsertEnter * set noimdisable|set iminsert=0

"auto ident file type
"filetype plugin indent on
filetype off

"show line number
set nu

"highlight code
syntax on
set hlsearch

"no bomb
set nobomb

"file type
set encoding=utf-8
set fileencodings=utf-8,gbk
language messages zh_CN.utf-8
set helplang=cn

colorscheme molokai

set laststatus=2

set guifont=Monaco:h18

"highlight select line
set cursorline

"show positions
set ruler


"show input cmd
set showcmd

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"set c style indent
set cindent

"auto ident
set ai

"smart ident
set si

"wrap lines
set wrap

"set how many lines of history for vim
set history=1000

"set to autoread when files changed from outside
set autoread

"set mouse enabled all time
set mouse=a

"set 7 lines to the cursor - when moving vertical
set so=7

"the commandbar height
set cmdheight=2

"change buffer -without saving
set hid

"ignore case where searching
set incsearch
set ignorecase

"no sound on errors
set noerrorbells
set novisualbell
set t_vb=

"turn backup off
set nobackup
set nowb
set noswapfile

"smart backspace
set backspace=start,indent,eol

"map leader key
let mapleaer="`"
imap jj <Esc>

"powerline config
let g:Powerline_loaded = 1
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %{GitBranchInfoTokens()[0]}\ %#StatusLine# "Branch+name
"set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction


"map page down with option+d
map <D-d> <C-d>
map <D-u> <C-u>
map <D-r> <C-r>
map <C-p> <D-p>


"NERDTree
map <F2> :NERDTreeToggle<CR>



"tabbar
set showtabline=2
let g:Tb_MaxSize=2
let g:Tb_TabWrap=1
highlight def link Tb_Normal normal
highlight def link Tb_Changed preproc
highlight def link Tb_VisibleNormal type
highlight def link Tb_VisibleChanged type

noremap <D-M-Left> :tabprevious<cr>
noremap <D-M-Right> :tabnext<cr>
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

"ctrlp open in new tab by default
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
let g:ctrlp_working_path_mode = 'ra'

"for vim markdown mode
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1

"php-cs-fixer
map <F3> :!php-cs-fixer fix % --level=psr2<CR><CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/bufexplorer.zip'
"Bundle 'humiaozuzu/TabBar'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/DoxygenToolkit.vim'
"Bundle 'vim-scripts/winmanager'
Bundle 'honza/vim-snippets'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-powerline'
Bundle 'spiiph/vim-space'
Bundle 'yonchu/accelerated-smooth-scroll'
Bundle 'eshion/vim-sync'
"Bundle 'vim-scripts/qiushibaike'
"Bundle 'vim-scripts/YankRing.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'taq/vim-git-branch-info'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall    - install(update) bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

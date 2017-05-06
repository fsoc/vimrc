"*********************
"
" anon34996224's vim config
"
" Realod it with:
" :so %
" 
"*********************

"*********************
" pathogen code
"*********************
execute pathogen#infect()
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in


"*********************
" general settings
"*********************
set backupdir=~/.vimswp
set swapfile
set dir=~/.vimswp
set undodir=~/.vimswp
filetype plugin indent on
set nocompatible
set clipboard=unnamed "osx clipboard

"autocomplete on file open
set wildmode=longest,list,full
set wildmenu

"colors
syntax on

"highlight search results
:set hlsearch

set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set showcmd " display incomplete commands
set ruler " show the current row and column

"*********************
" autostart
"*********************
let g:miniBufExplorerAutoStart = 1
autocmd VimEnter * wincmd p

"*********************
" custom plugins and functions
"*********************
"map leader key to ,
let mapleader=","

"jj to esc
imap jj <Esc>
"imap <Esc> <C-o>:echoerr 'Please use jj instead!'<CR>

"supertab colors
highlight Pmenu ctermbg=238 gui=bold
highlight PmenuSel ctermbg=100

"ctags
"for JS generate with: jsctags
set tags=.tags
map <leader>t <C-]>
" use tern for tags instead
"map <leader>t :TernDef<CR>
"map <leader>r :TernRef<CR>
"paste toggle
map <leader>p :set invpaste<CR>
"diff buffers a and b
map <leader>d :new a<CR>:put a<CR>:diffthis<CR>:vnew b<CR>:put b<CR>:diffthis<CR>
"ctrlP
map <leader>c :CtrlP<CR>
"gundo
map <leader>u :GundoToggle<CR>
"easy motion
map <leader>w <Plug>(easymotion-w)
map <leader>b <Plug>(easymotion-b)
map <leader><leader>w :echoerr 'only one leader needed'<CR>
map <leader><leader>B :echoerr 'only one leader needed'<CR>
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'

" tagbar toggle
map <leader>r :TagbarToggle<CR>

"<leader><leader>w (and other searches) type b for backwards
"indent xml
map <leader>x :1,$!xmllint --format --recover - 2>/dev/null<CR>

"newline with ctrl on o without going into insertmode
map <CR> ojj

"ack plugin (silversearcher) activate with :Ack <text>
let g:ackprg = 'ag --nogroup --nocolor --column'

"navigation hjkl style which requires 2 hands. but more logical
map <C-h> :bprev<CR>
map <C-j> <C-d>
map <C-k> <C-u>
map <C-l> :bnext<CR>

"show whats tabs and whats spaces
set list
set listchars=tab:>.,trail:.,extends:>,precedes:<,


"newline after comma
map <leader>c 0f,a<CR><Esc

"disable noob-mode
noremap <Up> :echoerr 'Use hjkl instead.'<CR>
noremap <Down> :echoerr 'Use hjkl instead.'<CR>
noremap <Left> :echoerr 'Use hjkl instead.'<CR>
noremap <Right> :echoerr 'Use hjkl instead.'<CR>
map <up> :echoerr 'Use hjkl instead.'<CR>
map <down> :echoerr 'Use hjkl instead.'<CR>
map <left> :echoerr 'Use hjkl instead.'<CR>
map <right> :echoerr 'Use hjkl instead.'<CR>
imap <up> :echoerr 'Use hjkl instead.'<CR>
imap <down> :echoerr 'Use hjkl instead.'<CR>
imap <left> :echoerr 'Use hjkl instead.'<CR>
imap <right> :echoerr 'Use hjkl instead.'<CR>

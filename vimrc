"  Required for Vundle
"
filetype off                  " required!

set nocompatible              " be iMproved
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
" Bundles
" Python
 "Bundle 'klen/python-mode'
 "Bundle 'davidhalter/jedi-vim'

"js stuff
Bundle 'Lokaltog/vim-easymotion'
Bundle 'claco/jasmine.vim'
Bundle 'mklabs/vim-backbone'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'marijnh/tern_for_vim'
Bundle 'briancollins/vim-jst'
Bundle 'kchmck/vim-coffee-script'

Bundle 'chrisbra/Colorizer'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'bling/vim-airline'
Bundle 'chrisbra/histwin.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'ervandew/supertab'
Bundle 'flazz/vim-colorschemes'

Bundle 'garbas/vim-snipmate'
Bundle 'gmarik/vundle'
Bundle 'h1mesuke/unite-outline'
Bundle 'honza/vim-snippets'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'FelikZ/ctrlp-py-matcher'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'mattn/ctrlp-register'
Bundle 'tacahiroy/ctrlp-funky'
"Bundle 'terryma/vim-smooth-scroll'

Bundle 'L9'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'mattn/emmet-vim'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'ntpeters/vim-better-whitespace'

Bundle 'Raimondi/delimitMate'
Bundle 'rking/ag.vim'
Bundle 'roman/golden-ratio'

Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'szw/vim-ctrlspace'

Bundle 'Shougo/neocomplete.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'

Bundle 'sjl/gundo.vim'

Bundle 'tomtom/tcomment_vim'
Bundle 'tomtom/tlib_vim'

Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-sleuth.git'
Bundle 'tpope/vim-unimpaired'

Bundle 'vim-scripts/dbext.vim'

Bundle 'tsaleh/vim-matchit'
Bundle 'tsukkee/unite-tag'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/mru.vim'
Bundle 'Yggdroot/indentLine'

"
" GUI and Console Settings
if has("gui")
  colorscheme smyck
  set  transparency=0
  " Disable all scrollbars in macvim
  set guioptions-=r
  set guioptions-=R
  set guioptions-=L
  set transparency=10
else
  colorscheme smyck
endif
"
" General Settings
syntax on
filetype plugin indent on

" No visaul bell hack
nmap s <Plug>(easymotion-w)
set noeb vb t_vb=
set backspace=indent,eol,start
set timeoutlen=1000 ttimeoutlen=0
set cf                      " Enable error files & error jumping.
set clipboard+=unnamed      " Yanks go on clipboard instead.
set autowrite               " Writes on make/shell commands
set ruler                   " Ruler on
set nu                      " Line numbers on
set nowrap                  " Line wrapping off:
set timeoutlen=250          " Time to wait after <ESC> (default causes an annoying delay)
set relativenumber          " Set relative number
set scrolloff=999           " center when searching etc.
set wildmenu wildmode=full  " wildmode - show tab completions on a nice little prompt
hi NonText guifg=bg         " No tildes for black lines
"set fillchars=stl:\≈,vert:\ " Vertical split char. Creates a line when splitting
set enc=utf-8
set fillchars=vert:\│
set smartcase               " When searching, ignore case when all lower caps, but not when you have caps.
set ignorecase              " Needed for smartcase
set synmaxcol=200           " This is set so that vim doesn't slow down with long lines
set showcmd                 " Show the command on the status line
set noswapfile              " Dont create swap files
set laststatus=2            " Always show last  status
set cursorline              " highlight current line
set hlsearch                " highlight search
set encoding=utf-8          " Preserve indentation while pasting text from the OS X clipboard
set mouse=a
set lazyredraw
set tags+=gems.tags " add gemstags to autocomplete
let mapleader = ","

" better tab nav
map <D-j> gt
map <D-k> gT
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

nmap <S-h> 40h
nmap <S-l> 40l

nmap gonn :vs +5 ~/repo/notes/<CR>
nmap gont :vs ~/repo/notes/todo.txt<CR>
nmap gons :vs ~/repo/notes/scratch.rb<CR>
map <Leader>h :Histwin<CR>
map <Leader>rso :!ruby %<CR>
map <leader>0 :so ~/.vimrc<CR>
map <leader>9 :vsp ~/.vimrc<CR> " Open to the vimrc file

map <leader>1 :vsp ~/.vim/bundle/vim-snippets/snippets/ruby.snippets<CR>
map <C-W><C-Q> <C-W>q
map <Space> <Leader>
nmap <leader>s :w<cr>       " space s to save
nmap <CR> o<Esc>            " Add space when hitting enter in normal mode
imap jj <Esc>               " use  jj to escape on insert mode
imap jk <Esc>:w<CR>               " use  jj to escape on insert mode
nmap <leader>db obinding.pry<Esc>:w<CR> " insert binding.pry
" OSX Related
" Yank text to the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
noremap <leader>y "*y
noremap <leader>yy "*Y
nmap gF :vertical wincmd f<CR>
"
"

" color columns 81 and 101
execute "set colorcolumn=81,101"
hi ColorColumn ctermbg=grey guibg=#111111 ctermbg=16
nmap <leader>c :noh<CR> " unhighlight

" Backups & File
set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.
if has('persistent_undo')    " persistent undo history
  set history=1000       " Number of things to remember in history.
  set undofile                 " Save undo's after file closes
  set undodir=~/.vim/undodir/  " where to save undo histories
  set undolevels=1000           " How many undo
  set undoreload=1000          " number of lines to save for undo
endif


" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
"

" CtrlP
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/crlp'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_max_depth = 400
let g:netrw_liststyle=3

let g:ctrlp_extensions = ['funky']

map gor :CtrlPRegister<CR>
map goh :CtrlPMRU<CR>
map goc :CtrlP app/controllers/<CR>
map gom :CtrlP app/models/<CR>
map goq :CtrlP app/models/gf_query/<CR>
map gov :CtrlP app/views<CR>
map goq :CtrlP app/models/gf_query<CR>
map gob :CtrlPBuff<CR>
nnoremap gof :CtrlPBufTag<Cr>
" narrow the list down with a word under cursor
nnoremap got :execute 'CtrlPBuffTag ' . expand('<cword>')<Cr>

if !has('python')
  echo 'In order to use pymatcher plugin, you need +python compiled vim'
else
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif

" Set delay to prevent extra search
let g:ctrlp_lazy_update = 350

" Do not clear filenames cache, to improve CtrlP startup
" You can manualy clear it by <F5>
let g:ctrlp_clear_cache_on_exit = 0

" Set no file limit, we are building a big project
let g:ctrlp_max_files = 0

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif

"

" NeoComplete NeoSnippets
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#force_overwrite_completefunc = 1
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"

" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
"map  :<C-u>Unite -no-split -buffer-name=UniteFiles   -start-insert file<cr>
map guo   :<C-u>Unite -no-split -buffer-name=UniteOutline -start-insert outline<cr>
map guy   :<C-u>Unite -no-split -buffer-name=UniteYank    history/yank<cr>
map gue   :<C-u>Unite -no-split -buffer-name=Unitebuffer  buffer<cr>

call unite#custom_source(
      \ 'file_rec', 'matchers', ['matcher_fuzzy'])

call unite#custom_source(
      \ 'outline', 'matchers', ['matcher_fuzzy'])
" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction


" Syntastic
let g:syntastic_error_symbol = 'x'
let g:syntastic_style_error_symbol = '†'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = 'ƒ'
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_mode_map = { 'mode': 'active',  'active_filetypes': ['ruby'] }
let g:syntastic_ruby_mri_exe='/Users/umaldonado/.rvm/wrappers/ruby-1.9.3-p545/ruby'


" NERDTree
map <space>d :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3 "Single click to expand directories
let g:NERDTreeShowLineNumbers=1
let g:NERDChristmasTree=1 "Pretty colors

" go to the directory
command! CdClient :NERDTree ClientIntegration |NERDTreeToggle |cd ~/repo/clientintegration
"

" Rainbow Parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"au Syntax * RainbowParenthesesLoadChevrons " <>
"

" DBEXT
" Database Profiles
let g:dbext_default_login_script_dir = '~/.vim/'
let g:dbext_default_profile_PG_13 = 'type=PGSQL:user=user:passwd=development:host=192.168.80.13:dbname=name:'
"

" DBExt mappings

map <F6> ggVG:DBExecRangeSQL<CR> " Execute last range selected
map <F5> gv:DBExecRangeSQL<CR> " Execute last range selected
map <F3> :DBExecSQL \dt<CR>
map <C-e> :DBExecSQLUnderCursor<CR>

"
"

" ctrl space
  set hidden
  let g:airline_exclude_preview = 1
  " hi CtrlSpaceSelected term=reverse ctermfg=187   guifg=#d7d7af ctermbg=23    guibg=#005f5f cterm=bold gui=bold
  " hi CtrlSpaceNormal   term=NONE    ctermfg=244   guifg=#808080 ctermbg=232   guibg=#080808 cterm=NONE gui=NONE
  " hi CtrlSpaceSearch   ctermfg=220  guifg=#ffd700 ctermbg=NONE  guibg=NONE    cterm=bold    gui=bold
  " hi CtrlSpaceStatus   ctermfg=230  guifg=#ffffd7 ctermbg=234   guibg=#1c1c1c cterm=NONE    gui=NONE
"

" neo snipets
let g:neosippet#disable_runtime_snippets=1
let g:neosnippet#enable_snipmate_compatibility = 1
"
" Airline
let g:airline_powerline_fonts=0
" let g:airline_left_sep='▅'
" let g:airline_right_sep='▅'


" File Type Settings
autocmd Filetype html  setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype vim   setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby  setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python  setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype vim   setlocal ts=2 sts=2 sw=2 expandtab foldmethod=marker
autocmd FileType ruby let b:surround_35 = "#{\r}"
au BufNewFile,BufRead *.ejs set filetype=html

" Ruby Language
let g:ruby_indent_access_modifier_style="indent"
" vimrc
if !empty($MY_RUBY_HOME)
  let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
endif

" device-mgmt
function! Device_mgmt_settings()
  nmap gbb  :CtrlP app/assets/javascripts/<CR>
  nmap gbv  :CtrlP app/assets/javascripts/backbone/views<CR>
  nmap gbc  :CtrlP app/assets/javascripts/backbone/collections<CR>
  nmap gbm  :CtrlP app/assets/javascripts/backbone/models<CR>
  command! CdBackbone :NERDTree DevMgmt-BackBone| NERDTreeToggle | cd ~/repo/device-mgmt/app/assets/javascripts/backbone
  command! CdRoot :CdDevMgmt
  :NERDTree DevMgmt |NERDTreeToggle |cd ~/repo/device-mgmt
endfunction

map goar :CdRoot
map goab :CdBackbone

function! Evim()
  :e ~/.vimrc
endfunction

function! SafeHist()
  nmap goV  :CtrlP app/views/asset/safety_events/<CR>
endfunction

command! Evim :call Evim()
command! CdDevMgmt :call Device_mgmt_settings()
"
"
"
" Notes Directory
autocmd BufRead,BufEnter ~/repo/notes/* map <buffer> <leader>t :r! date<cr>

"  set clipboard=unnamed
" surround
"
"

"

" buffer specific
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd BufRead,BufEnter *.erb* map <buffer> <leader>T o<%  %><ESC>hhi
autocmd BufRead,BufEnter *.erb* map <buffer> <leader>t o<%= %><ESC>hhi
autocmd BufRead,BufEnter *.erb* map <buffer> <leader>b o<% binding.pry %><Esc>:w<CR> " insert binding.pry
"


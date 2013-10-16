"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Bundles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('vim_starting')
   set nocompatible
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

 call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/unite-session'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'kana/vim-smartword'
NeoBundle 'AutoClose'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'fweep/vim-tabber'
NeoBundle 'EasyMotion'
NeoBundle "mattn/emmet-vim"
NeoBundle 'mattn/livestyle-vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'lunaru/vim-less'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'alfredodeza/jacinto.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'porqz/KeyboardLayoutSwitcher'
NeoBundle 'bling/vim-airline'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
filetype off
filetype plugin indent on
set history=1000
set autoread
set so=7
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc
set wildmenu
set cmdheight=1
set hidden
set backspace=indent,eol,start
set scrolloff=0
set notimeout
set ttimeout
set ttimeoutlen=10
set synmaxcol=100

set autoread
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=menuone,preview
set encoding=utf-8
set hidden
set history=1000
set incsearch
set laststatus=2
set list
set visualbell
"need checking
set showcmd
set exrc
set secure
set matchtime=2
set completeopt=longest,menuone,preview


set modelines=0
set noeol
set relativenumber
set numberwidth=3
set winwidth=83
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set showmatch
set gdefault
set hlsearch

" clear search matching
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Don't jump when using * for search
nnoremap * *<c-o>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts and GUI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntax enable         " Enable syntax highlighting
set t_Co=256          " Enable 256 colours
set encoding=utf8     " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac  " Use Unix as the standard file type
set background=light
set guifont=Anonymice\ Powerline:h14
set guioptions-=r
set guioptions-=L
set guioptions-=e
set guioptions-=T
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " Turn backup off, since most stuff is in SVN, git et.c anyway...
set nowb
set noswapfile
set undodir=~/.vim/tmp/undo//     " undo files
set undofile
set undolevels=3000
set undoreload=10000
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab     " Use spaces instead of tabs
set smarttab      " Be smart when using tabs ;)
set shiftwidth=2  " Setup default ts
set tabstop=2
set softtabstop=2
set lbr           " Linebreak on 500 characters
set tw=500
set ai            " Auto indent
set si            " Smart indent
set nowrap          " Wrap lines
set mouse=nicr    " Remove ME
set listchars=tab:▸\ ,extends:❯,precedes:❮,trail:␣
" eol:¬,
set showbreak=↪


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:␣
    au InsertLeave * :set listchars+=trail:␣
augroup END
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let maplocalleader = "\\"

noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>

map Y y$

noremap H ^
noremap L g_
noremap J 25j
noremap K 25k

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Split windows navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Splits ,v and ,h to open new splits (vertical and horizontal)
nnoremap <space>v <C-w>v<C-w>l
nnoremap <space>h <C-w>s<C-w>j

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autosave
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autowriteall
":au FocusLost * :wa
au FocusLost    * :silent! wall


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimrc autoreload
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! BufWritePost vimrc source ~/.vimrc
autocmd! BufWritePost .vimrc source ~/.vimrc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'Yggdroot/indentLine'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#DADADA'
let g:indentLine_char = '∙'



""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
set laststatus=2 " Always show the status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'bling/vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'Shougo/vimfiler.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimfiler_as_default_explorer = 1
nmap <C-n> :VimFilerSplit<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'Shougo/vimfiler.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap w  <Plug>(smartword-w)
nmap b  <Plug>(smartword-b)
nmap ge  <Plug>(smartword-ge)
xmap w  <Plug>(smartword-w)
xmap b  <Plug>(smartword-b)
" Operator pending mode.
omap <Leader>w  <Plug>(smartword-w)
omap <Leader>b  <Plug>(smartword-b)
omap <Leader>ge  <Plug>(smartword-ge)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'fweep/vim-tabber'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabline=%!tabber#TabLine()
let g:tabber_divider_style = 'gui'
nnoremap <silent> <D-t>            :999TabberNew<CR>
nnoremap <silent> <Leader><Leader> :TabberSelectLastActive<CR>
nnoremap <silent> <Leader>tn       :TabberNew<CR>
nnoremap <silent> <Leader>tm       :TabberMove<CR>
nnoremap <silent> <Leader>tc       :tabclose<CR>
nnoremap <silent> <Leader>tl       :TabberShiftLeft<CR>
nnoremap <silent> <Leader>tr       :TabberShiftRight<CR>
nnoremap <silent> <Leader>ts       :TabberSwap<CR>
nnoremap <silent> <D-1>            <ESC>:tabnext 1<CR>
nnoremap <silent> <D-2>            <ESC>:tabnext 2<CR>
nnoremap <silent> <D-3>            <ESC>:tabnext 3<CR>
nnoremap <silent> <D-4>            <ESC>:tabnext 4<CR>
nnoremap <silent> <D-5>            <ESC>:tabnext 5<CR>
nnoremap <silent> <D-6>            <ESC>:tabnext 6<CR>
nnoremap <silent> <D-7>            <ESC>:tabnext 7<CR>
nnoremap <silent> <D-8>            <ESC>:tabnext 8<CR>
nnoremap <silent> <D-9>            <ESC>:tabnext 9<CR>
nnoremap <silent> <D-0>            <ESC>:tabnext 0<CR>
nnoremap <D-Up> :tabnew<CR>
nnoremap <D-Right> :tabnext<CR>
nnoremap <D-Left> :tabprevious<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'scrooloose/nerdcommenter'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <space><space> <Leader>ci
vmap <Space><Space> <Leader>ci
"nmap <space><space> :call NERDComment(0, "invert")<cr>
"vmap <Space><Space> :call NERDComment(0, "invert")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'porqz/Keyboardlayoutswitcher'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:kls_defaultInputSourceIndex = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'EasyMotion'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_mapping_w = '<space>w'
let g:EasyMotion_mapping_j = '<space>l'
let g:EasyMotion_mapping_f = '<space>c'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'Neocomplite'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
  " Use fuzzy completion.
  let g:neocomplete#enable_fuzzy_completion = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css, setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType stylus, setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown, setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_preview = 0
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'


" Replace w and others with smartword-mappings
nmap w  <Plug>(smartword-w)
nmap b  <Plug>(smartword-b)
nmap ge  <Plug>(smartword-ge)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => iUnite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:unite_source_history_yank_enable = 1
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_rec_max_cache_files=5000
let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ ], '\|'))

" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use the rank sorter for everything
call unite#filters#sorter_default#use(['sorter_rank'])

nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>y :Unite history/yank<cr>
nnoremap <Space>f :Unite file_rec<cr>
nnoremap <C-P> :<C-u>Unite  -buffer-name=files   -start-insert buffer file_rec/async:!<cr>
nnoremap <leader>c :Unite colorscheme -auto-preview<cr>

autocmd FileType unite call s:unite_settings()

function! s:unite_settings()
  "let b:SuperTabDisabled=1
  "imap <buffer> <C-j> <NOP>
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

  nmap <buffer> <ESC><ESC> <Plug>(unite_exit)

endfunction
scriptencoding utf-8
"=============================================================================
" Based off of TaoBeier's .vimrc (moelove.info; v18.09.0)
" Author: Kevin Tam
" Version: 0.1
" Date: 04/30/19
"=============================================================================
"" Vundle Initialization ***** Switched to Plug
"
"" no vi-compatible
"set nocompatible
"
"" Setting up Vundle
"let iCanHazVundle=1
"let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
"if !filereadable(vundle_readme)
"    echo "Installing Vundle..."
"    echo ""
"    silent !mkdir -p ~/.vim/bundle
"    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
"    let iCanHazVundle=0
"endif
"
"filetype off
"
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"
"" let Vundle manage Plugins
"Plugin 'VundleVim/Vundle.vim'
" ============================================================================
" Plug Initialization

call plug#begin('~/.config/nvim/plugs')

"Active plugins: (!! = configure)
"
"   Github:
"       Aesthetics:
" Primary colorscheme
Plug 'liuchengxu/space-vim-dark'

" Color match parentheses
Plug 'luochen1990/rainbow'

"       UI:
" Directory browser
Plug 'scrooloose/nerdtree'

" Vim tab manager
Plug 'kien/tabman.vim'

" Browser for classes and their modules
Plug 'majutsushi/tagbar'

" Status/tabline and themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



"       Language Support/Specific

" Python language-specific additions to mimic IDE
Plug 'python-mode/python-mode'

" Python support for deoplete
Plug 'zchee/deoplete-jedi'

" R support 
Plug 'jalvesaq/Nvim-R'

" Clang support for deoplete
Plug 'zchee/deoplete-clang'

" Pan doc and syntax checker
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

"Pan doc support for R
Plug 'vim-pandoc/vim-rmarkdown'

"LaTeX plugin
Plug 'lervag/vimtex'

"       QOL:
" Window chooser
Plug 't9md/vim-choosewin'

" Code commenter !!!
Plug 'scrooloose/nerdcommenter'

" Code and files fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Extension for ctrlp - fuzzy command finder
Plug 'fisadev/vim-ctrlp-cmdpalette'

" Alter surrounding pairs of quotes/parentheses/etc
Plug 'tpope/vim-surround'

" Autoclosing pairs
Plug 'Townk/vim-autoclose'

" Treat lines of same indent levels as blocks/ fast selection
Plug 'michaeljsmith/vim-indent-object'

" Better autocompletion vs YCM
"Plug 'Shougo/neocomplcache.vim'  "Change to deoplete

" Autocomplete replacement for neocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Neosnippet (shougo)
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Quick navigation across page!!!!!
Plug 'easymotion/vim-easymotion'

" Drag visual blocks arround !!!
Plug 'zirrostig/vim-schlepp'

" Python and other languages code checker --- May switch to ALE
"Plug 'vim-syntastic/syntastic'

" Asynchronous linter - replaces syntastic
Plug 'w0rp/ale'
 
" Auto formating
Plug 'Chiel92/vim-autoformat'

" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" Indicate index levels !!!
Plug 'Yggdroot/indentLine'

"       Other:
" Git Wrapper
Plug 'tpope/vim-fugitive'

" Counts search results
Plug 'vim-scripts/IndexedSearch'

"Navigate between matching pairs
Plug 'vim-scripts/matchit.zip'

"View CSV files
Plug 'chrisbra/csv.vim'

" Yank and delete history
"Plug 'vim-scripts/YankRing.vim'

call plug#end()

"=============================================================================
"Inactive plugins: (*** Waiting for implementing into workflow)
"
"   Github:
"       Aesthetics:
" Primary colorscheme  alternative - monokai*****
" Plugin 'sickill/vim-monokai'

" Paint css colors with the real color
"Plugin 'lilydjwg/colorizer'

"       UI:
" Console as buffer/terminal - obsolete by :terminal
" Plugin 'rosenfeld/conque-term'

" Sign column indicators for changes made in Git/mercurial/etc-managed file***
" Plugin 'mhinz/vim-signify

"       QOL:
" Zen coding - html and css
" Plugin 'mattn/emmet-vim' 
 
" Produce task list from tags *****
" Plugin 'fisadev/FixedTaskList.vim'

" Snippets manager (SnipMate), dependencies, and snippets repo *****
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'honza/vim-snippets'
" Plugin 'garbas/vim-snipmate' ---- ** May switch with Ultisnips

" Automatically sort python imports****
" Plugin 'fisadev/vim-isort'

" Drag visual blocks arround
" Plugin 'fisadev/dragvisuals.vim' -- switched to vim-schlepp

"       Other:
" Markdown syntastic highlight **************
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

" Markdown realtime preview **************
" Before you want to use it, please run
" `sudo npm -g install instant-markdown-d`
" Plugin 'suan/vim-instant-markdown'

" javascript complete after install the plugin, you must cd the install
" directory and run `npm install`, then add a .tern-project config file
" the doc at http://ternjs.net/doc/manual.html#vim
" Plugin 'ternjs/tern_for_vim'

" Golang supporting plugins
" Plugin 'fatih/vim-go'

" JSX syntax highlight.
" Plugin 'mxw/vim-jsx'
"
" Handlebars syntax highlighting
" Plugin 'mustache/vim-mustache-handlebars'

" Vue.js syntax and highlighting
" Plugin 'tao12345666333/vim-vue'

" True Sublime Text style multiple selections for Vim
" Plugin 'terryma/vim-multiple-cursors'

" Modern database interface for Vim
" Plugin 'tpope/vim-dadbod'

" Dockerfile support
" Plugin 'ekalinin/Dockerfile.vim'

" ============================================================================
" " Install plugins the first time vim runs
" 
" if iCanHazVundle == 0
"     echo "Installing Plugins, please ignore key map error messages"
"     echo ""
"     :PluginInstall
" endif

" ============================================================================
" Vim Settings and mappings

"python 3 default interpreter
let g:pymode_python = 'python3'

" Ctrl-j/k inserts blank line below/above.
nnoremap <silent><C-j> m`:set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> m`:set paste<CR>m`O<Esc>``:set nopaste<CR>

" split window location defaults
set splitright
set splitbelow

" allow plugins by file type (required for plugins!) ** Not needed in nvim
"filetype plugin on
"filetype indent on

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" highlight cursor line and column
set cursorline
set cursorcolumn

" hidden startup messages
set shortmess=atI

" auto read and write
set autowrite
"set autoread ** nvim def

" when deal with unsaved files ask what to do
set confirm

" no backup files
set nobackup

" other settings 
set mouse=a
set whichwrap+=<,>,h,l,[,]
" set background=dark ** nvim def
" set encoding=utf-8 ** nvim def

set backspace=2 " make backspace work like most other apps
" set backspace=indent,eol,start

" always show status bar
"set laststatus=2 ** nvim def

" incremental search
"set incsearch ** nvim def

" highlighted search results
"set hlsearch ** nvim def

" search ignore case
set ignorecase

" muting search highlighting 
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" syntax highlight on
syntax on

" show line numbers
set nu

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
" map <M-Right> <c-w>l
" map <M-Left> <c-w>h
" map <M-Up> <c-w>k
" map <M-Down> <c-w>j
" imap <M-Right> <ESC><c-w>l
" imap <M-Left> <ESC><c-w>h
" imap <M-Up> <ESC><c-w>k
" imap <M-Down> <ESC><c-w>j

" old autocomplete keyboard shortcut
"imap <C-J> <C-X><C-O>

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" save as sudo
ca w!! w !sudo tee "%"

" simple recursive grep
" both recursive grep commands with internal or external (fast) grep
command! -nargs=1 RecurGrep lvimgrep /<args>/gj ./**/*.* | lopen | set nowrap
command! -nargs=1 RecurGrepFast silent exec 'lgrep! <q-args> ./**/*.*' | lopen
" mappings to call them
nmap ,R :RecurGrep 
nmap ,r :RecurGrepFast 
" mappings to call them with the default word as search text
nmap ,wR :RecurGrep <cword><CR>
nmap ,wr :RecurGrepFast <cword><CR>

" use 256 colors when possible
" if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
" 	let &t_Co = 256
colorscheme space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59
" endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like zsh
" (autocomplete menu)
" set wildmenu - Default in nvim
set wildmode=full

" better backup, swap and undos storage
"set directory=~/.vim/dirs/tmp     " directory to place swap files in -
"Default in nvim = ~/.local/share/nvim/swap//
set backup                        " make backup files
" set backupdir=~/.vim/dirs/backups " where to put backup files
" Default is ~/.local/share/nvim/backup
set undofile                      " persistent undos - undo after you re-open the file
" set undodir=~/.vim/dirs/undos - default for nvim= ~/.local/share/nvim/undo
" set viminfo+=n~/.vim/dirs/viminfo - nvim uses SHADA now
" store yankring history file there too
" let g:yankring_history_dir = '~/.local/share/nvim/dirs'

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" ============================================================================
" Plugins settings and mappings
" NERDTree ---------------------------

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>

" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>

" don't show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

"" auto open or close NERDTree
"autocmd vimenter * if !argc()  
"    NERDTree  
"endifdii  
"  
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tagbar ----------------------------- 

" toggle tagbar display
map <F4> :TagbarToggle<CR>

" autofocus on tagbar open
let g:tagbar_autofocus = 1

" Rainbow ----------------------------

" start with vim
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs' : ['#6A5ACD', '#B22222', '#C0FF3E', '#EEC900', '#9A32CD', '#EE7600', '#98fb98', '#686868'],
\   'ctermfgs': 'xterm-256color' == $TERM ? ['208', '227', '112', '198', '220', '166', '85', '27'] : ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
\}

"IndentLine --------------------------
let g:indentLine_enabled = 0
nmap <C-\> :IndentLinesToggle<CR>
let g:indentLine_char = '|'

" Tasklist ---------------------------

" show pending tasks list
" map <F2> :TaskList<CR>

" CtrlP ------------------------------

" file finder mapping
let g:ctrlp_map = ',e'
" hidden some types files
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif           "Linux
" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>
" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>
" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>
" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" same as previous mappings, but calling with current word as default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

""  " Syntastic ------------------------------
"
"" show list of errors and warnings on the current file
"nmap <leader>e :Errors<CR>
"" turn to next or previous errors, after open errors list
"nmap <leader>n :lnext<CR>
"nmap <leader>p :lprevious<CR>
"" check also when just opened the file
"let g:syntastic_check_on_open = 1
"" syntastic checker for javascript.
"" eslint is the only tool support JSX.
"" If you don't need write JSX, you can use jshint.
"" And eslint is slow, but not a hindrance
"" let g:syntastic_javascript_checkers = ['jshint']
"" let g:syntastic_javascript_checkers = ['eslint']
"" don't put icons on the sign column (it hides the vcs status icons of signify)
"let g:syntastic_enable_signs = 0
"" custom icons (enable them if you use a patched font, and enable the previous 
"" setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'
"let g:syntastic_quiet_messages = {
"    \ "regex":   'invalid-name\|missing-docstring'}
"
" Signify ------------------------------ (!!!!! Learn to use)

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
" let g:signify_vcs_list = [ 'git', 'hg' ]
" " mappings to jump to changed blocks
" nmap <leader>sn <plug>(signify-next-hunk)
" nmap <leader>sp <plug>(signify-prev-hunk)
" " nicer colors
" highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
" highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
" highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
" highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
" highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
" highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227
 
" Python-mode ------------------------------

" don't use linter, we use syntastic for that
let g:pymode_lint_on_write = 0
let g:pymode_lint_signs = 0
" fold python code on open
let g:pymode_folding = 1
" start with all folds open
set foldlevel=99
" don't load rope by default. Change to 1 to use rope
let g:pymode_rope = 0
" open definitions on same window, and custom mappings for definitions and
" occurrences
let g:pymode_rope_goto_definition_bind = ',d'
let g:pymode_rope_goto_definition_cmd = 'e'
nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
nmap ,o :RopeFindOccurrences<CR>
" allow fold/unfold with spacebar
nnoremap <space> za
vnoremap <space> zf
" fold method indent
set foldmethod=indent

" Nvim-R------------------------------------
" remapping the basic :: send line
nmap , <Plug>RDSendLine
" remapping selection :: send multiple lines
vmap , <Plug>RDSendSelection
" remapping selection :: send multiple lines + echo lines
vmap ,e <Plug>RESendSelection


""   NeoComplCache ------------------------------
"
"" most of them not documented because I'm not sure how they work
"" (docs aren't good, had to do a lot of trial and error to make 
"" it play nice)
"
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"
"" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_ignore_case = 1
"
"" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1			
"let g:neocomplcache_enable_auto_select = 1
"
"let g:neocomplcache_enable_fuzzy_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_fuzzy_completion_start_length = 1
"let g:neocomplcache_auto_completion_start_length = 1
"let g:neocomplcache_manual_completion_start_length = 1
"
"" Set minimum syntax keyword length.
"let g:neocomplcache_min_keyword_length = 1
"let g:neocomplcache_min_syntax_length = 1
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
"" complete with workds from any opened file
"let g:neocomplcache_same_filetype_lists = {}
"let g:neocomplcache_same_filetype_lists._ = '_'
"
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? \<C-n>" : \<TAB> - add back " around key
"commands
"
"" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"    let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Deoplete ------------------------------------

let g:deoplete#enable_at_startup = 1

" Clang support for deoplete
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-6.0/lib/libclang-6.0.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'

"LaTeX for deoplete (vimtex)
call deoplete#custom#var('omni', 'input_patterns', {'tex': g:vimtex#re#deoplete})

" Automatically close method preview window whem select completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"Allow tab navigation
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Neosnippet -----------------------------------
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" TabMan ------------------------------ 

" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'

" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" DragVisuals ------------------------------

" mappings to move blocks in 4 directions
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')
" mapping to duplicate block
vmap <expr> D DVB_Duplicate()

" Window Chooser ------------------------------

" mapping
nmap <C-w> <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

" Airline ------------------------------

let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#whitespace#enabled = 1

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" new file set title and turn to endline
autocmd BufNewFile *.sh,*.py,*.rb,*.R exec ":call SetTitle()"
function SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")

    elseif &filetype == 'r'
        call setline(1,"\#!/usr/bin/env Rscript")
        call append(line(".")+1, "")

    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python3")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")
    endif
endfunction
autocmd BufNewFile * normal G

" vim-autoformat
noremap <F2> :Autoformat<CR>

" Ale ----------------------------------------

let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8'], 'r': ['lintr'], 'cpp':['clangtidy']}
let g:ale_fixers = {'r': ['styler'], 'cpp':['clang-format']}
let g:ale_fix_on_save = 1

"Nvim-R -------------------------------------

"press -- to have Nvim-R insert the assignment operator: <-
let R_assign_map = "<<"

" set a minimum source editor width
let R_min_editor_width = 80

" make sure the console is at the bottom by making it really wide
let R_rconsole_width = 1000

" show arguments for functions during omnicompletion
let R_show_args = 1

" Don't expand a dataframe to show columns by default
let R_objbr_opendf = 0

" Press the Ctrl+space bar to send lines and selection to R console
vmap <C-Space> <Plug>RDSendSelection
nmap <C-Space> <Plug>RDSendLine

"Vim-tex

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

""Vim-markdown ------------------------------
"
"" Disabled automatically folding
"let g:vim_markdown_folding_disabled=1
"" LeTeX math
"let g:vim_markdown_math=1
"" Highlight YAML frontmatter
"let g:vim_markdown_frontmatter=1
"
"" Vim-instant-markdown -----------------
"
"" If it takes your system too much, you can specify
"" let g:instant_markdown_slow = 1
"" if you don't want to manually control it
"" you can open this setting
"" and when you open this, you can manually trigger preview
"" via the command :InstantMarkdownPreview
"let g:instant_markdown_autostart = 0

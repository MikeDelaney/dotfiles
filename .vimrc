" Basics {
    set nocompatible " explicitly get out of vi-compatible mode
    syntax on " syntax highlighting on
    " Declare all plugins
    call plug#begin(expand('~/.vim/plugged/'))

    " Git Integration
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    " Colors
    Plug 'smeggingsmegger/vim-colorschemes'

    " <Tab> all the things!
    Plug 'ervandew/supertab'

    " A pretty statusline, bufferline integration
    Plug 'bling/vim-airline'

    " Better Python code completion.
    Plug 'davidhalter/jedi-vim', { 'filetypes' : ['python'] }
    " Plug 'Valloric/YouCompleteMe'
    " Use Python mode for all the awesome PEP-8 stuff but not for completion.
    " Plug 'klen/python-mode', { 'filetypes' : ['python'] }
    Plug 'nvie/vim-flake8'

    " Vim window manager. CTRL-N, CTRL-C (Close), CTRL-space (Make active
    " window), CTRL-J (Next), CTRL-K (Prev)
    Plug 'spolu/dwm.vim'

    " Track the snippets engine.
    " CTRL-C to use
    Plug 'SirVer/ultisnips'

    " Snippets are separated from the engine. Add this if you want them:
    Plug 'honza/vim-snippets'

    " If you pip install "howdoi" you can use it in Vim
    " Plug 'laurentgoudet/vim-howdoi'

    " Tagbar for browsing source code trees.
    Plug 'majutsushi/tagbar'

    " Show indent level with ,ig
    Plug 'nathanaelkane/vim-indent-guides'

    " Quick commenting using ,,
    Plug 'scrooloose/nerdcommenter'

    " Source code error checking
    Plug 'scrooloose/syntastic'

    " Tim Pope has some awesome plugins for working with text.
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-surround'

    " Repeat plugin actions
    Plug 'tpope/vim-repeat'

    " Multiple cursors
    Plug 'terryma/vim-multiple-cursors'

    Plug 'scrooloose/nerdtree'
    " Sparkup for HTML voodoo
    " CTRL-y, to convert
    Plug 'mattn/emmet-vim', { 'filetypes' : ['javascript', 'html', 'php'] }

    " Syntax, tabs, indenting, etc. for PHP, JS, Puppet, Go, Coffee
    Plug 'StanAngeloff/php.vim', { 'filetypes' : ['javascript', 'html', 'php', 'jinja'] }
    Plug 'pangloss/vim-javascript', { 'filetypes' : ['javascript', 'html', 'php', 'jinja'] }
    Plug 'maksimr/vim-jsbeautify', { 'filetypes' : ['javascript', 'html', 'php', 'jinja', 'css'] }
    Plug 'einars/js-beautify', { 'filetypes' : ['javascript', 'html', 'php', 'jinja', 'css'] }
    Plug 'rodjek/vim-puppet', { 'filetypes' : ['puppet'] }
    Plug 'fatih/vim-go', { 'filetypes' : ['go'] }
    Plug 'kchmck/vim-coffee-script', { 'filetypes' : ['coffee', 'javascript', 'html', 'jinja'] }
    Plug 'plasticboy/vim-markdown', { 'filetypes' : ['mkd'] }
    Plug 'elzr/vim-json', { 'filetypes' : ['json', 'jinja'] }
    Plug 'groenewege/vim-less', { 'filetypes' : ['less'] }
    Plug 'mitsuhiko/vim-jinja', { 'filetypes' : ['html', 'jinja'] }
    Plug 'sophacles/vim-bundle-mako', { 'filetypes' : ['html', 'jinja'] }

    call plug#end()

    syntax enable
    colorscheme solarized 
    set background=dark
" }

" General {
    set backspace=indent,eol,start " make backspace a more flexible
    set backup " make backup files
    set history=1000         " remember more commands and search history
    set undolevels=1000      " use many big heap levels of undo
    set backupdir=~/.vim/backup " where to put backup files
    set directory=~/.vim/tmp " directory to place swap files in
    set fileformats=unix,mac,dos " support all three, in this order
    set hidden " you can change buffers without saving
    if has("mouse")
        set mouse=a " use mouse everywhere
    endif
    set noerrorbells " don't make noise when something errors
    if has("persistent_undo")
        set undofile " enable file undoing
        set undodir=~/.vim/undo " where to put undo files
    endif
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                    \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list
    " Set buffer to infinity
    set viminfo='100,h
    set term=screen-256color

    " Enable omnicompletion
    " NOTE: This is turned off right now because of jedi-vim
    " set omnifunc=syntaxcomplete#Complete
    au FileType python set omnifunc=jedi#completions
" }

" Vim UI {
    set cursorline " highlight current line
    set hlsearch " highlight searched for phrases
    set incsearch " highlight as you type you
                   " search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines
                     " betweens rows
    set list " we do what to show tabs, to ensure we get them
              " out of my files
    set listchars=tab:>-,trail:- " show tabs and trailing
    set matchtime=5 " how many tenths of a second to blink
                     " matching brackets for
    set nostartofline " leave my cursor where it was
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid
                         " 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 5 lines at the size
    set statusline=   " clear the statusline for when vimrc is reloaded
    set statusline+=%-3.3n\                      " buffer number
    set statusline+=%<%.99f\                     " file name up to 99 chars
    set statusline+=%h%m%r%w                     " flags
    set statusline+=%{fugitive#statusline()} " Git fugitive status line
    set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
    set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
    set statusline+=%{&fileformat}]              " file format
    set statusline+=%=                           " right align
    set statusline+=%b,0x%-8B\                   " current char
    set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
    set statusline+=%#syntodo#%{SyntasticStatuslineFlag()} " Add syntastic status line
" }

" Text Formatting/Layout {
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on return,
                          " and let gq format comments
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set nosmartindent " turn off smart indent so comments work in Python
    set shiftwidth=4 " auto-indent amount when using cindent,
                      " >>, << and stuff like that
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                       "should a tab be (see expandtab)
    set tabstop=4 " We don't care about real tabs...
    set t_Co=256
" }

" Mappings {
    let mapleader = ","
    " Mapping Unite commands
    " nnoremap <Leader>/ :Unite grep:.<cr>
    " nnoremap <Leader>y :Unite -buffer-name=yank history/yank<cr>
    " nnoremap <Leader>l :Unite -buffer-name=buffers -quick-match buffer<cr>
    " nnoremap <C-p> :Unite -start-insert file<cr>
    " Mapping tab commands
    nnoremap <Leader>tc :tabc<return>
    nnoremap <Leader>tn :tabn<return>
    nnoremap <Leader>tp :tabp<return>
    nnoremap <Leader>te :tabe<space>
    " Remap ,0 to first non-blank character
    nnoremap <Leader>0 ^
    " Netrw vertical left split
    command! NetrwVSP 30vsp . | set winfixwidth
    nnoremap <Leader>nt :NetrwVSP<return>
    " Add Tagbar Toggle
    nnoremap <Leader>tb :TagbarToggle<return>
    " Error list, next & previous commands for Syntastic
    nnoremap <Leader>e :Errors<return>
    nnoremap <Leader>en :lnext<return>
    nnoremap <Leader>ep :lprev<return>

    " Adding Toggle Comment
    nnoremap <Leader><Leader> :call NERDComment("n", "Toggle")<return>
    vnoremap <Leader><Leader> :call NERDComment("v", "Toggle")<return>
    " Add 'Sign' shortcut
    nnoremap <Leader>si :exec "normal A".system("echo -n ' -- '$(git config --global --get user.name) $(date +\%D)")<return>
    " Map Paste / No Number for copy, paste, etc. in Vim without X.
    nnoremap <Leader>p :set paste!<return>
    nnoremap <Leader>ln :set number!<return>

    " X System Clipboard copy, cut, & paste shortcuts.
    noremap <Leader>xp "+gP<return>
    noremap <Leader>xy "+y<return>
    noremap <Leader>xx "+x<return>
    " Format JSON automagically
    nmap <Leader>json :%!python -m json.tool<CR>
    " Compile (make) less to new CSS file
    nnoremap <Leader>ml :w <BAR> !lessc % > %:t:r.css<CR><space>
    " Spell Checking
    nnoremap <Leader>sp :setlocal spell spelllang=en_us<return>
    nnoremap <Leader>nsp :setlocal spell spelllang=<return>
    " Edit & Source $MYVIMRC
    nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
    nnoremap <Leader>sv :source $MYVIMRC<CR>
    " Start vertical split command with space character.
    nnoremap <Leader>vs :vsp<space>
    " Start horizontal split command with space character.
    nnoremap <Leader>hs :sp<space>
    " Close window
    nnoremap <Leader>cw :close<return>
    " Close all but the current window.
    nnoremap <Leader>w :only<return>
    " Close buffer
    nnoremap <Leader>bd :bd<return>
    " Clear highlighting
    nnoremap <Leader>ch :noh<return>
    " Insert a line above or below cursor without insert mode.
    nnoremap <Leader>O O<Esc>
    nnoremap <Leader>o o<Esc>
    " Make arrow keys jump by 10 lines
    nnoremap <S-Down> 10j
    nnoremap <S-Up> 10k
    inoremap <S-Down> <Esc>10ji
    inoremap <S-Up> <Esc>10ki
    vnoremap <S-Down> 10j
    vnoremap <S-Up> 10k
    " Send the selected hunk to IWS's hastebin
    vnoremap <Leader>hb <esc>:'<,'>:w !HASTE_SERVER=http://hastebin.britecorepro.com haste<CR>
    " Jump easily between open windows
    " Deprecated in favor of DWM
    " nnoremap <C-h> <C-w>h
    " nnoremap <C-j> <C-w>j
    " nnoremap <C-k> <C-w>k
    " nnoremap <C-l> <C-w>l
    " " Howdoi mapping
    map <Leader>hdi <Plug>Howdoi
    " Refresh syntax highlighting
    nnoremap <Leader>rf :syntax off<return>:syntax on<return>
    " Fix all the whitespace in a file. Re-tabs and removes trailing whitespace.
    " Usage: ,ws
    nnoremap <Leader>ws :TrimWS<return>
    nnoremap <Leader>rt gg=G
    nnoremap <Leader>rw :TrimWS<return>gg=G

    nnoremap <Leader>lw :set wrap!<return>:set linebreak!<return>:set list!<return>

    " Insert a single character of your choosing and return to the right spot.
    " Usage: ,[spacebar][character]
    nnoremap <Leader><space> :exec "normal i".nr2char(getchar())."\e"<return>
    nnoremap <Leader>a :exec "normal a".nr2char(getchar())."\e"<return>
    " Write as super user
    command! W w !sudo tee % > /dev/null
    " Trim trailing whitespace
    command! TrimWS %s/\s*$//g | noh
    " Visual Selection Search using * and #
    function! s:VSetSearch()
        let temp = @@
        norm! gvy
        let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
        let @@ = temp
    endfunction
    vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
    vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>
    " 'Parameters' Operator mapping
    " Usage: dp - Delete between ()
    onoremap p i(
" }

" Plugin settings {
    let coffee_compile_vert=1 " When compiling CoffeeScript, throw output into vertical split
    let coffee_make_options='--bare'
    let g:syntastic_check_on_open=1 " Run Syntastic when opening files
    let g:syntastic_python_checkers=['python', 'pyflakes'] " Be more strict in python syntax
    let g:ftplugin_sql_omni_key='<C-S>' " reset sql omni key
    let NERDSpaceDelims=1 " Add space delimiters
    let g:gitgutter_eager=0 " Only run gitgutter on read/write of files

    " YouCompleteMe settings
    " let g:ycm_autoclose_preview_window_after_completion=1
    " map <Leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

    " airline settings
    let g:airline#extensions#tabline#enabled = 1 " Adding pretty tabline
    let g:airline#extensions#tabline#show_buffers = 1 " Make 0 for not showing closed buffers
    " let g:vim_json_syntax_conceal = 0 " Don't hide quotes on JSON

    " GitGutter Next/Prev Shortcuts
    nmap gh <Plug>GitGutterNextHunk
    nmap gH <Plug>GitGutterPrevHunk

    " Disable GitGutter in vimdiff
    if &diff
        let g:gitgutter_enabled=0
    endif

    " Solarized variables
    let g:solarized_termtrans=1
    let g:solarized_contrast="high"

    " Molokai settings
    let g:rehash256 = 1
    let g:molokai_original = 1

    " Python syntax highlighting settings
    let python_highlight_all = 1
    let python_version_2 = 1

    " Indent guide settings
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1
    let g:indent_guides_auto_colors = 0
    hi IndentGuidesOdd ctermbg=234
    hi IndentGuidesEven ctermbg=234

    " Jedi settings
    let g:jedi#popup_on_dot = 1
    let g:jedi#popup_select_first = 1
    " Disabling parameter autocomplete to speed up completion for now.
    " Will enable after it is fixed in Jedi.
    let g:jedi#show_call_signatures = "0"

    " No rope for autocomplete!
    let g:pymode_rope = 0
    let g:pymode_folding = 0
    let g:pymode_lint=0 " Turn off python-mode lint since we use Syntastic
    let g:pymode_trim_whitespaces=0 " don't molest whitespace
    let g:pymode_syntax_all = 1
    let g:pymode_syntax_print_as_function = 1
    let g:pymode_syntax = 1
    let g:pymode_options_max_line_length = 0

    " Snippet settings
    let g:UltiSnipsExpandTrigger="<c-e>"
    let g:UltiSnipsListSnippets="<c-l>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " markdown settings
    let g:vim_markdown_folding_disabled=1

    " golang settings
    " let g:go_fmt_command = "goimports"

    " Unite settings
    let g:unite_enabled_start_insert=1
    let g:unite_source_history_yank_enable=1
    let g:unite_winheight = 10


" Global Abbreviations {
    iabbrev rn return
" }

" Global Functions {
    function! InsertDebugLine(str, lnum)
        let line = getline(a:lnum)
        if strridx(line, a:str) != -1
            normal dd
        else
            let plnum = prevnonblank(a:lnum)
            call append(line('.')-1, repeat(' ', indent(plnum)).a:str)
            normal k
        endif

        " Save file without any events
        if &modifiable && &modified | noautocmd write | endif
    endfunction
" }

" Autocmds {
    autocmd FileType javascript noremap <buffer>  <Leader>js :call JsBeautify()<cr>
    autocmd FileType html noremap <buffer> <Leader>js :call HtmlBeautify()<cr>
    autocmd FileType css noremap <buffer> <Leader>js :call CSSBeautify()<cr>
    autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
    autocmd FileType gitcommit setlocal colorcolumn=50

    au BufNewFile,BufRead *.wsgi set filetype=python
    augroup golang_au
        autocmd!
        " Display real tabs like 4 spaces, don't list trailing characters
        au BufNewFile,BufReadPost *.go setl noexpandtab tabstop=4 nolist
    augroup END
    augroup javascript_au
        autocmd!
        " Add debugger key command for JS
        au BufNewFile,BufReadPost *.js nnoremap <Leader>b :call InsertDebugLine("debugger;", line('.'))<return>
    augroup END
    augroup less_au
        autocmd!
        " Function to compile Less to CSS
        function! LessToCss()
            let current_file = shellescape(expand('%:p'))
            let filename = shellescape(expand('%:r'))
            let command = "silent !lessc " . current_file . " " . filename . ".css"
            execute command
        endfunction
        " Auto-compile less files on save.
        autocmd BufWritePost,FileWritePost *.less call LessToCss()
    augroup END
    augroup python_au
        autocmd!
        " Add remote debugger key command for Python
        au BufNewFile,BufReadPost *.py nnoremap <Leader>rb :call InsertDebugLine("import rpdb; rpdb.set_trace()  # XXX BREAKPOINT", line('.'))<return>
        au BufNewFile,BufReadPost *.py nnoremap <Leader>bb :call InsertDebugLine("import pudb; pudb.set_trace()  # XXX BREAKPOINT", line('.'))<return>
    augroup END
    augroup reopen_au
        autocmd!
        " Re-open VIM to the last spot you had open.
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
            \| exe "normal! g'\"" | endif

        " Jump to the top of git COMMIT_EDITMSG files.
        au BufReadPost COMMIT_EDITMSG
        \ exe "normal! gg"
    augroup END
    augroup unite_au
        autocmd!
        function! s:unite_settings()
            " Put settings that execute inside the unite buffer here
        endfunction
        autocmd FileType unite call s:unite_settings()
    augroup END
    augroup highlight_au
        autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%100v.*/
        autocmd FileType python set nowrap
    augroup END
" }

" Include custom configurations via the .vimrc_custom file
if filereadable($HOME."/.vimrc_custom")
    source $HOME/.vimrc_custom
endif

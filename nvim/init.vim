scriptencoding = 'utf-8'
let g:loaded_python_provider = 1
let g:python3_host_prog = expand('$HOME/.miniconda3/bin/python')


""""""""""""
" vim-plug "
""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" appereance
Plug 'icymind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'

" filetree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'

" motion
Plug 'bkad/camelcasemotion'
Plug 'easymotion/vim-easymotion'

" editing
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'machakann/vim-sandwich'

" snippets & autocomplete
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-sources', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
" Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}

" language packs
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'ap/vim-css-color'
Plug 'jackguo380/vim-lsp-cxx-highlight'

" linting
Plug 'w0rp/ale', { 'on':  'NERDTreeToggle' }

" vim-tmux integration
Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
Plug 'roxma/vim-tmux-clipboard'

" making life easier
" Plug '/usr/bin/fzf'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'romainl/vim-cool'
Plug 'mbbill/undotree'
Plug 'qpkorr/vim-bufkill'
Plug 'kristijanhusak/vim-carbon-now-sh'

call plug#end()


""""""""""
" Leader "
""""""""""

let mapleader = ','
let maplocalleader = '\'



"""""""""""""""""""
" Plugin Settings "
"""""""""""""""""""

" vimtex
let g:vimtex_view_method = 'zathura'

" airline
set laststatus=2
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

let g:airline#extensions#whitespace#checks = []

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
" let g:airline#extensions#coc#enabled = 1

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'
let g:airline#extensions#ale#show_line_number = 0

nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9

" gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
highlight GitGutterAdd ctermbg=8 ctermfg=2
highlight GitGutterChange ctermbg=8 ctermfg=3
highlight GitGutterDelete ctermbg=8 ctermfg=1
highlight GitGutterChangeDelete ctermbg=8 ctermfg=2

" devicons
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:DevIconsEnableFoldersOpenClose = 1

" nerdtree
" nnoremap <silent> <c-_> :NERDTreeToggle<CR>
" inoremap <silent> <c-_> <esc>:NERDTreeToggle<CR>i
let g:NERDTreeWinPos = 'bottom'
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeWinSize = 40

" nerdtree-syntax-highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ 'Modified'  : '+',
    \ 'Staged'    : '!',
    \ 'Untracked' : '?',
    \ 'Renamed'   : '→',
    \ 'Unmerged'  : '=',
    \ 'Deleted'   : 'x',
    \ 'Dirty'     : '+',
    \ 'Clean'     : '',
    \ 'Ignored'   : '~',
    \ 'Unknown'   : '' }

" camelcasemotion
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <Leader>s <Plug>(easymotion-sl)
map <Leader>l <Plug>(easymotion-lineanywhere)
map <Leader>j <Plug>(easymotion-bd-jk)
map <Leader>/ <Plug>(easymotion-sn)
omap <Leader>/ <Plug>(easymotion-tn)

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = {
    \ 'python': { 'left': '#', 'leftAlt': '#' } }

" sandwich
let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

" coc
"" Trigger completion with characters ahead and navigate.
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Navigate diagnostics
nmap <silent> <Up> <Plug>(coc-diagnostic-prev)
nmap <silent> <Down> <Plug>(coc-diagnostic-next)

" Keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

highlight link CocFloating markdown

nnoremap <silent> <c-_> :CocCommand explorer<CR>
inoremap <silent> <c-_> <esc>:CocCommand explorer<CR>i

" deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#rust#racer_binary = expand('$HOME/.cargo/bin/racer')
" let g:deoplete#sources#rust#rust_source_path = system('rustc --print sysroot')[:-2].'/lib/rustlib/src/rust/src'
" let g:deoplete#sources#rust#disable_keymap = 1
" let g:deoplete#sources#go#gocode_binary = expand('$HOME/gocode/bin/gocode')
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" let g:deoplete#sources#go#pointer = 1
" let g:deoplete#sources#go#source_importer = 1

" neosnippet
" imap <expr><TAB>
"     \ neosnippet#expandable_or_jumpable() ?
"         \ "\<Plug>(neosnippet_expand_or_jump)" :
"         \ pumvisible() ? "\<C-n>" : "\<TAB>"


" ultisnips
" let g:UltiSnipsExpandTrigger = '<TAB>'
" let g:UltiSnipsJumpForwardTrigger = '<TAB>'
" let g:UltiSnipsJumpBackwardTrigger = '<C-TAB>'

" ale
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '◈'
let g:ale_sign_warning = '◈'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'
let g:ale_linters = {
    \ 'sh': ['shellcheck'],
    \ 'vim': ['vint'],
    \ 'yaml': ['yamllint'],
    \ 'python': ['isort', 'flake8'],
    \ 'rust': ['cargo', 'rustc', 'rls', 'rustfmt'] }
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'sh': ['shfmt'],
    \ 'python': ['isort', 'yapf'] ,
    \ 'rust': ['rustfmt'] }
let g:ale_rust_rls_toolchain = 'stable'
let g:ale_rust_rls_config = {
    \ 'rust': {
    \     'clippy_preference': 'on'
    \ }
    \ }
" nnoremap <silent> <Down> :ALENext<CR>
" nnoremap <silent> <Up> :ALEPrevious<CR>
" inoremap <silent> <Down> <C-o>:ALENext<CR>
" inoremap <silent> <Up> <C-o>:ALEPrevious<CR>

" tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
inoremap <silent> <C-h> <ESC>:TmuxNavigateLeft<CR>
inoremap <silent> <C-j> <ESC>:TmuxNavigateDown<CR>
inoremap <silent> <C-k> <ESC>:TmuxNavigateUp<CR>
inoremap <silent> <C-l> <ESC>:TmuxNavigateRight<CR>

" tmuxline
let g:tmuxline_separators = {
    \ 'left': '',
    \ 'right': '',
    \ 'left_alt': '|',
    \ 'right_alt': '|',
    \ 'space': ' ' }

" fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'border': 'sharp' } }
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Label'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Label'],
  \ 'info':    ['fg', 'Comment'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Function'],
  \ 'pointer': ['fg', 'Statement'],
  \ 'marker':  ['fg', 'Conditional'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" let g:fzf_colors = {
"     \ 'fg':      ['fg', 'Normal'],
"     \ 'bg':      ['bg', 'Normal'],
"     \ 'hl':      ['fg', 'Comment'],
"     \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"     \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"     \ 'hl+':     ['fg', 'Statement'],
"     \ 'info':    ['fg', 'PreProc'],
"     \ 'border':  ['fg', 'Ignore'],
"     \ 'prompt':  ['fg', 'Conditional'],
"     \ 'pointer': ['fg', 'Exception'],
"     \ 'marker':  ['fg', 'Keyword'],
"     \ 'spinner': ['fg', 'Label'],
"     \ 'header':  ['fg', 'Comment'] }

" carbon-now-sh
let g:carbon_now_sh_options = {
    \ 'bg': 'rgba(255,255,255,1)',
    \ 't': 'solarized dark',
    \ 'wt': 'none',
    \ 'ds': 'true',
    \ 'dsyoff': '5px',
    \ 'dsblur': '5px',
    \ 'wc': 'false',
    \ 'wa': 'true',
    \ 'pv': '5px',
    \ 'ph': '0px',
    \ 'ln': 'true',
    \ 'fm': 'Source Code Pro',
    \ 'fs': '13px',
    \ 'lh': '140%',
    \ 'si': 'false',
    \ 'wm': 'false' }

" tagbar
" let g:tagbar_sort = 0
" let g:tagbar_previewwin_pos = ''
" let g:tagbar_iconchars = ['▸', '▾']
" let g:tagbar_map_togglefold = 't'
" let g:tagbar_map_nexttag = '<TAB>'
" let g:tagbar_map_prevtag = '<S-TAB>'
" let g:tagbar_map_previewwin = '<SPACE>'
" let g:tagbar_map_showproto = 'P'
" nnoremap <C-\> :TagbarToggle<CR>
" inoremap <C-\> <esc>:TagbarToggle<CR>i


""""""""""""""""""""
" General Settings "
""""""""""""""""""""

" some stuff
set wildmenu
set wildignore+=*.swp,*.swo,*swn,*.zip,*.png,*.jpg,*jpeg,*pdf,.git,__pycache__
set mouse=a
set timeoutlen=500
set backspace=indent,eol,start
set scrolloff=8
set iskeyword-=_,A-Z
set splitright
set splitbelow
set completeopt-=preview
set autoread
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" color
set termguicolors
set background=dark
colorscheme NeoSolarized

" line indicators
set colorcolumn=89
set cursorline
highlight CursorLine guibg=11

" tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" indentation
set autoindent
set smartindent

" search
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
highlight Search guifg=none gui=bold,underline
highlight IncSearch guifg=none gui=bold,underline

" fold
"set foldenable
"set foldmethod=marker
"set foldlevelstart=99
"set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

" line number
set number
set numberwidth=6
set relativenumber
highlight LineNr guibg=none
highlight CursorLineNr guibg=none

" buffer
set hidden

" jump to the last position when opening a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") 
            \ | exe "normal! g'\"" | endif




""""""""""""
" Mappings "
""""""""""""

" source/edit vimrc
nnoremap <Leader>sv :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>ev :tabnew ~/.config/nvim/init.vim<CR>

" open/close tabs
nnoremap <leader>E :tabnew<space>
nnoremap <silent> <Leader>x :q<CR>

" navigate through tabs
nnoremap <silent> <Left> gT
nnoremap <silent> <Right> gt
inoremap <silent> <Left> <ESC>gT
inoremap <silent> <Right> <ESC>gt

" split window
nnoremap <Leader>v :hsplit<CR>
nnoremap <Leader>h :vsplit<CR>

nnoremap <silent> <Leader>w :wa<CR>
nnoremap <silent> <Leader>q :xa<CR>

" escape
" inoremap kj <ESC>
inoremap jk <ESC>

" :->;
nnoremap ; :

" move to start/end of line
nnoremap H ^
nnoremap L $

" fast moving
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

" move line up/down one line
nnoremap - ddkP
nnoremap _ ddp

" search selected text
vnoremap // y/<C-R>"<CR>

" select previously selected text
nnoremap <Leader>ss gv

" select pasted text
nnoremap <Leader>sp `[v`]

" select innerword
nnoremap <SPACE> viw
nnoremap <CR> ciw

" copy and paste current line
nnoremap pp Vyp

" delete current line in insert mode
inoremap <C-d> <ESC>ddi

" undo in insert mode
inoremap <C-u> <ESC>ui

" toggle upper/lower case of a word
nnoremap <C-c> viw~
inoremap <C-c> <ESC>lviw~i

" copy to/paste from system clipboard
nnoremap <silent> <Leader>y "+y
vnoremap <silent> <Leader>y "+y
nnoremap <silent> <Leader>p "+p
vnoremap <silent> <Leader>p "+p

nnoremap <silent> <leader>e :Files<cr>

" nnoremap <silent> <leader>e :call Fzf_dev()<CR>
" Files + devicons
" function! Fzf_dev()
"   let $FZF_DEFAULT_COMMAND = 'fd --type=file --hidden --follow --exclude .git'
"   let l:fzf_files_options = '--preview "bat --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'

"   function! s:files()
"     let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
"     return s:prepend_icon(l:files)
"   endfunction

"   function! s:prepend_icon(candidates)
"     let l:result = []
"     for l:candidate in a:candidates
"       let l:filename = fnamemodify(l:candidate, ':p:t')
"       let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
"       call add(l:result, printf('%s %s', l:icon, l:candidate))
"     endfor

"     return l:result
"   endfunction

"   function! s:edit_file(item)
"     let l:pos = stridx(a:item, ' ')
"     let l:file_path = a:item[pos+1:-1]
"     execute 'silent e' l:file_path
"   endfunction

"   call fzf#run({
"         \ 'source': <sid>files(),
"         \ 'sink':   function('s:edit_file'),
"         \ 'options': '-m ' . l:fzf_files_options,
"         \ 'down':    '40%' })
" endfunction

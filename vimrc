call plug#begin()

" Plug 'takac/vim-hardtime'
" Plug 'Shougo/echodoc.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'rizzatti/dash.vim'
" Plug 'vim-autoformat/vim-autoformat'
" Plug 'dense-analysis/ale'
Plug 'rhysd/vim-clang-format'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree'
Plug 'chun-yang/auto-pairs'
Plug 'ludovicchabant/vim-gutentags'
Plug 'universal-ctags/ctags'
Plug 'skywind3000/gutentags_plus'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
" Plug 'vim-python/python-syntax'
" Plug 'psf/black', { 'branch': 'stable' }

" Plug 'ap/vim-buftabline'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'bagrat/vim-buffet'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'tomasiser/vim-code-dark'
" Plug 'jaredgorski/SpaceCamp'
" Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
" Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
" Plug 'ianding1/leetcode.vim'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'vim-airline/vim-airline-themes'
Plug 'skywind3000/vim-preview'
" Plug 'liuchengxu/vim-which-key'
" Plug 'vim-scripts/DoxygenToolkit.vim'
" Plug 'skywind3000/vim-terminal-help'
" Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
" Plug 'lervag/vimtex'
" Plug 'skywind3000/quickmenu.vim'
" Plug 'skywind3000/asyncrun.vim'
" Plug 'junegunn/vim-easy-align'

call plug#end()
"
" runtime! debian.vim
"
" set langmenu=en_US
" let $LANG = 'en_US'
set termguicolors
set relativenumber
set mouse=a
set t_Co=256
set t_ut=
" set renderoptions=type:directx,gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5
let g:gruvbox_contrast_dark = 'hard'
" let s:gb.dark0_hard  = ['#1d2021', 234]
colorscheme gruvbox
let g:airline_theme='gruvbox'

"
highlight Normal ctermbg=NONE
"
inoremap jj <esc>
inoremap jk <esc>
let mapleader=","
nnoremap L $
nnoremap H 0
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
" set relativenumber " Show relative line numbers
set smartindent " 开启新行时使用智能自动缩进
set tabstop=2
set softtabstop=2
set expandtab
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set noswapfile " 不要生成swap文件
set ignorecase   " Do smart case matching
set incsearch   " Incremental search
set hidden    " Hide buffers when they are abandoned
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
" Some servers have issues with backup files, see #649
set nobackup " 覆盖文件时不备份
set nowritebackup
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set encoding=UTF-8
set tags=./.tags;,.tags
set wildmenu
set nrformats+=alpha
set nrformats+=octal
set nrformats+=hex
set nrformats+=bin
set nrformats+=unsigned
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta
let maplocalleader = ","
"
" configure rainbow vim
let g:rainbow_active = 1

let g:rainbow_conf = {
      \ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \ 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \ 'operators': '_,_',
      \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \ 'separately': {
      \   '*': {},
      \   'tex': {
      \     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
      \   },
      \   'lisp': {
      \     'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
      \   },
      \   'vim': {
      \     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \   },
      \   'html': {
      \     'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
      \   },
      \   'css': 0,
      \   'nerdtree': 0,
      \ }
      \}

" end rainbow

" set clipboard=unnamedplus
set clipboard=unnamed

" LeaderF
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
"CTRL+P 在当前项目目录打开文件搜索
let g:Lf_ShortcutF = '<c-p>'
" CTRL+N 打开 MRU搜索，搜索你最近打开的文件
" noremap <D-s> <c-[> :w <CR>
noremap <c-n> :LeaderfMru<cr>
" Ctrl+f 打开函数搜索
noremap <C-f> :LeaderfFunctionAll!<cr>
" Ctrl+b 打开 Buffer 搜索
noremap <C-b> :LeaderfBuffer<cr>
noremap <C-t> :LeaderfBufTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_ShowDevIcons = 0
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_WindowPosition = 'popup'

" open ctag in tab/vertical split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <leader><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
let g:vim_markdown_override_foldtext = 1

vnoremap <C-c> "*y

" Nerdcommenter
map gcc <Plug>NERDCommenterToggle
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" ctags / gtags
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
  let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
  let g:gutentags_modules += ['gtags_cscope']
endif

" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')

" 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
let g:formatterpath = ['/opt/homebrew/opt/llvm/bin/clang-format']

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" highlighting c/c++
" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
" let g:cpp_class_decl_highlight = 1
" let g:cpp_posix_standard = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_concepts_highlight = 1
" let g:python_highlight_all = 1

" change cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
set bg=dark

" coc-start
" disable parameter auto-completion
let g:coc_node_path = '/opt/homebrew/opt/node@20/bin/node'
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> gh :call ShowDocumentation()<CR>

set pumheight=30

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <silent> <F2> <Plug>(coc-rename)

let b:coc_diagnostic_disable=0
" coc-end

"" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" let g:clang_format#auto_format = 1
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" easy motion
let g:EasyMotion_do_mapping = 1
" map <Leader> <Plug>(easymotion-prefix)
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
let g:echodoc#type = "echo" 
set noshowmode

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val, "lnum": 1 }'))
  copen
  cc
endfunction

""" fzf
let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - Popup window (center of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

" - Popup window (anchored to the bottom of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

" - down / up / left / right
let g:fzf_layout = { 'down': '40%' }

" - Window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = ''

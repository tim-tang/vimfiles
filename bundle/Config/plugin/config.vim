" 色彩主题
if $TERM == "xterm-256color"
    set t_Co=256 " 256 色
endif

" past toggle
noremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>


"let g:molokai_original = 1
let g:rehash256 = 1
" color scheme for vimdiff
if &diff
   "set background=dark
   "colorscheme peaksea
   colorscheme diffcolor
else
  colorscheme molokai
endif

" 关闭兼容模式
set nocompatible
" 开启魔法匹配
set magic
" 退格键行为
set backspace=indent,eol,start
" 右下角显示标尺
set ruler
" 编码设置
set fileencodings=ucs-bom,utf-8,gbk
set fileformats=unix,dos,mac

" 缩进设置
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 显示行号
set number
" 设置*.ftl file type.
au BufRead,BufNewFile *.ftl set filetype=html

" 设置*.json file type.
au BufRead,BufNewFile *.json setf json

" Format *.xml files by sending them to xmllint
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" 高亮括号对
set showmatch
" 自动缩进
set autoindent
" 高亮搜索
set hlsearch
" 状态栏显示键入的命令
set showcmd
" 不创建备份文件
set nobackup
" 高亮当前行
set cursorline
" 智能大小写判断
set ignorecase smartcase
" 语法高亮
syntax on
" 打开文件类型支持
filetype plugin indent on
" 递归向上查找 tags
set tags=tags;
" 修复 Terminal 下面中文双引号的问题
set ambiwidth=double

" 即时搜索
set incsearch

" 永远显示状态栏
set laststatus=2

" undo dir
if v:version >= 703
  set undodir=$HOME/.vimundodir
  set undofile
endif

" 打开文件时跳到上次编辑的位置
autocmd BufReadPost * call handy#JumpToLatest()

if (!(has("win32") || has("win64")))
    autocmd BufWritePost * call system('bsync '.expand('%:p').' &')
endif

" 保存文件时自动去除 trailing whitespace
autocmd BufWritePre *.js call handy#RemoveTrailingWhitespace()

" 写文件时去去找 jstags.sh 生成 tag
autocmd BufWritePost *.js call handy#GenerateTag()

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*/*target/*,*/target*/*,*/node_modules/*

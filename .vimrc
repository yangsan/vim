"开启文档类型侦测
filetype on

"不要兼容vi
set nocompatible

"将jj映射到escape
imap jj <Esc>

"设置一下leader键
let mapleader = ','

"允许鼠标的使用
set mouse=a

"光标移动到顶部和底部的时候保留三行的距离
set scrolloff=3

"打开自动高亮
syntax on

"禁止生成临时文件
set nobackup
set noswapfile

"搜索时忽略大小写

set ignorecase
"选择色彩方案
colorscheme desert
set background=dark
set t_Co=256

"设置窗口大小
set lines=40
set columns=100
 
"文件被改变时自动读取
set autoread

"显示行号
set number

autocmd FileType python set cul cuc


"打开wildmenu，用于命令行补完。比如在命令行输入 :color <Tab> 会出现一排电脑上可用的色彩方案，按<Tab>就能切换
set wildmenu

"总显示当前位置，见右下角
set ruler

"高亮搜索结果
set hlsearch

"在输入搜索文字时，实时匹配
set incsearch

"显示配对的括号
set showmatch

"统一编码
set encoding=utf8


"将tab换成空格
set expandtab

"智能tab
set smarttab

"1tab==4空格
set shiftwidth=4
set tabstop=4

"自动断行
set lbr
set tw=500

"自动缩进
set ai

"智能缩进
set si

"自动换行
set wrap

"在分屏中间方便移动的映射
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"将j和k的移动由逻辑行转为屏幕行
map j gj
map k gk

"
"
"
"Vundle vim的插件管理程序{

""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" 让Bundle管理Vundle
Bundle 'gmarik/vundle'
""""""""以上为必须的部分


"安装的插件从这里开始：


"强大的状态栏
Bundle 'Lokaltog/powerline',{'rtp':'powerline/bindings/vim/'}
"设置字体
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
"总是显示
set laststatus=2


"自动配对括号引号
Bundle 'AutoClose'

"显示树状文件目录
Bundle 'The-NERD-tree'
"定义一下启动nerd tree的热键，我用的是Ctrl+n
map <C-n> :NERDTreeToggle<CR>
"自动打开nerdtree
"autocmd vimenter * NERDTree
"在只剩一个nerdtree的情况下关闭窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"python的自动补全插件
Bundle 'git://github.com/davidhalter/jedi-vim'
"设置补全热键
let g:jedi#completions_command = "<C-l>"
"关闭自动补全时跳出的函数说明
autocmd FileType Python setlocal completeopt-=preview
set splitbelow

"用<Tab>键自动补全
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"python-mode插件
Bundle 'klen/python-mode'
"缩进
let g:pymode_indent = 1 
"折叠
let g:pymode_folding = 1
"快速运动
let g:pymode_motion = 1
"文档
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"支持虚拟环境
let g:pymode_virtualenv = 1
"运行程序
let g:pymode_run = 1
let g:pymode_run_bind = '<F8>'
"断点
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'
"拼写检查
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checker = ['pyflakes','pep8']
"自动补全，这里没有启用，和前面的jide-vim冲突
""map <C-l> <C-Space>
let g:pymode_rope = 0 
""let g:pymode_rope_completion_bind = '<C-Space>'
"高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

"快速移动
Bundle 'Lokaltog/vim-easymotion'

"markdown高亮插件
Bundle 'plasticboy/vim-markdown'
"正确识别markdown文件
autocmd BufNewFile,BufRead *.md,*.mkdn,*.markdown :set filetype=markdown

"高效的注释工具
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on     " 必须的
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"}

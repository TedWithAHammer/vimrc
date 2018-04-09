set nocompatible
" set the runtime path to include Vundle and initialize
" plugin section
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
let g:tagbar_width=30
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_auto_faocus =1
autocmd BufReadPost *.py call tagbar#autoopen()
" js setting
Plugin 'hail2u/vim-css3-syntax'

Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-scripts/CmdlineComplete'
" let Vundle manage Vundle, required
" git plugin
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHulet g:ycm_global_ycm_extra_conf = '~/.vim/Plugin/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" code completioni
Plugin 'Valloric/YouCompleteMe'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_server_python_interpreter='/usr/local/bin/python3'
let g:ycm_global_ycm_extra_conf='/Users/wangliying/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
" file browser
Plugin 'scrooloose/nerdtree'
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"

" color theme
"Plugin 'altercation/solarized'
"let g:solarized_termtrans  = 1
"let g:solarized_termcolors = 256
"let g:solarized_contrast   = "high"
"let g:solarized_visibility = "high"
" super search
Plugin 'kien/ctrlp.vim'
"缩进线
Plugin 'Yggdroot/indentLine'
"括号自动补全
Plugin 'jiangmiao/auto-pairs'
" fancy statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '>'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '<'
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Plugin 'suan/vim-instant-markdown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled =1

" indentpython
Plugin 'vim-scripts/indentpython.vim'
"color-schemes
Plugin 'flazz/vim-colorschemes'
"代码格式化
Plugin 'Chiel92/vim-autoformat'
"let g:formatter_yapf_style = 'pep8'
let g:autoformat_verbosemode=1
let g:formatterpath =['/usr/local/bin/yapf','/usr/local/bin/js-beautify','/usr/local/go/bin/gofmt']
"一键运行
"Plugin 'skywind3000/asyncrun.vim'
"ale 语法检查
Plugin 'w0rp/ale'
let g:ale_python_flake8_executable = '/usr/local/bin/flake8'
let g:ale_python_flake8_use_global = 1
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_linters = {'python': ['flake8', 'mypy', 'pylint']}
"Plugin 'python-mode/python-mode'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" required
filetype off
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on
" 语法高亮
syntax on
" 文件修改后自动载入
set autoread
" 关闭交换文件
set noswapfile
" 突出现实当前行
set cursorline
" 括号匹配，跳转并高亮显示匹配的括号
set showmatch
set norelativenumber
" 插入模式绝对行号，普通模式相对
" 设置文件编码
set encoding=utf-8
set langmenu=zh_CH.UTF-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" 自动补全设置
set completeopt=longest,menu
" 设置backspace与delete的灵活程度，backspace=2则没有任何限制
set backspace=2
"
set shiftwidth=4
"
set t_Co=256
" 搜索时忽略大小写
set ignorecase
" 启用鼠标
set mouse=a
" 窗口默认高度
"set lines=80
" 窗口默认宽度
"set columns=180

" 自动缩进
set autoindent
" 智能对齐
set smartindent
" 显示行号
set number
" 一个Tab代表4个空格
set tabstop=4
" set guioptions+=Tiset
set guioptions+=m
" 解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
" 设置双字宽显示
set ambiwidth=double
" 命令智能补全
set wildmenu
" 显示命令
set showcmd
" 命令行高度
set cmdheight=1
" 一直显示状态栏
set laststatus=2
" 设置字体
set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14
" 设置背景
set background=dark
" 设置主题acula
colorscheme iceberg
"jellybeans
" 显示指令
set showcmd
"""""""""""python setting
au BufNewFile,BufRead *.py
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set textwidth=79 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match Error /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"				keymap setting						"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

func! CompileRunGcc()
	exec "w"
	if &filetype == 'python'
		exec '!time python %'
	elseif &filetype == 'sh'
		:!time sh %
	endif
endfunc

map <F5> :call CompileRunGcc()<CR>
map <C-t> :NERDTreeToggle<CR>
nmap <S-f> :Autoformat<CR>
nmap <Leader>d :ALEDetail<CR>
nmap <F4> :TagbarToggle<CR>
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" put plugin setting here







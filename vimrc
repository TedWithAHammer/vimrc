set nocompatible
set nu
set ts=2
syntax on
filetype on
filetype plugin on
filetype indent on
set sw=4
set history=1024
set nocursorline
set ignorecase
set hlsearch
set wrap
set laststatus=2
set showmatch
set enc=utf-8
set guifont=HackNerdFontCompleteM-Regular:h15
set nobackup
set noswapfile
set autoread
set fdm=manual
set foldlevelstart=99
set laststatus=2
set fileencodings=utf-8
set fencs=utf-8,gbk,gb18030,gb2312,cp936,usc-bom,euc-jp
set clipboard+=unnamed
if has('mouse')
    set mouse=a
    set selectmode=mouse,key
    set nomousehide
endif
set autoindent

""""""
call plug#begin('~/.vim/bundle') " vim-plug 初始化
Plug 'dracula/vim'
Plug 'fatih/vim-go'
let g:go_auto_sameids = 1
let g:go_updatetime=800
let OmniCpp_MayCompleteDot = 1
"Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
"Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
"Plug 'skywind3000/asyncrun.vim'
"let g:asyncrun_open=6
Plug 'Chiel92/vim-autoformat'
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatters_golang=['gofmt']
let g:formatters_python = ['autopep8']
let g:formatter_yapf_style = 'pep8'
let verbose=1
nnoremap <S-f> :Autoformat<CR>
"Plug 'Yggdroot/indentLin'
"Plug 'Valloric/MatchTagAlways'
"代码补全
"Plug 'artur-shaik/vim-javacomplete2'
"autocmd FileType java 
"setlocal omnifunc=javacomplete#Complete
Plug 'davidhalter/jedi-vim'
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = 'left'
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#popup_on_dot=0
"color scheme
"格式检查
Plug 'dense-analysis/ale'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_linters ={'vue':['eslint','vls'],'python':['flake8'], 'go': ['gofmt', 'golint', 'go vet']}
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"let b:ale_fixers = [
"\   'remove_trailing_lines',
"\   'isort',
"\   'ale#fixers#generic_python#BreakUpLongLines',
"\   'yapf',
"\]
"Plug 'google/yapf'
"autocmd FileType python nnoremap <S-f> :0,$!yapf<CR>
"文件查找器
Plug 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <F3> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeShowHidden=1
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif
"
Plug 'ryanoasis/vim-devicons'
"python template
Plug 'aperezdc/vim-template'
let g:templates_directory = '~/.vim/templates'
let g:templates_global_name_prefix='template'
"let g:templates_name_prefix= 'template'
"let g:templates_user_variables=[[]]
"状态栏
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='dracula'
"Plug 'lervag/vim-latex'
"Plug 'jrosiek/vim-mark'
"python 缩进
Plug 'vim-scripts/indentpython.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'chriskempson/vim-tomorrow-theme'

" markdown
Plug 'godlygeek/tabular'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
nmap <silent> <F8> <Plug>MarkdownPreview  
"Plug 'plasticboy/vim-markdown'
"Plug 'kannokanno/previm'
"Plug 'tyru/open-browser.vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}
autocmd CursorHold * silent call CocActionAsync('highlight')
inoremap <silent><expr> <TAB>
	\ pumvisible() ? coc#_select_confirm() :
	\ coc#refresh()
Plug 'majutsushi/tagbar'
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=20
nmap <F4> :TagbarToggle<CR>
" Plug 'bigeaddgle/molokai'
let g:rbpt_colorpairs = [
                        \ ['brown',       'RoyalBlue3'],
                        \ ['Darkblue',    'SeaGreen3'],
                        \ ['darkgray',    'DarkOrchid3'],
                        \ ['darkgreen',   'firebrick3'],
                        \ ['darkcyan',    'RoyalBlue3'],
                        \ ['darkred',     'SeaGreen3'],
												\ ['darkmagenta', 'DarkOrchid3'],
                        \ ['brown',       'firebrick3'],
                        \ ['gray',        'RoyalBlue3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['Darkblue',    'firebrick3'],
                        \ ['darkgreen',   'RoyalBlue3'],
                        \ ['darkcyan',    'SeaGreen3'],
                        \ ['darkred',     'DarkOrchid3'],
                        \ ['red',         'firebrick3'],
                        \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
call plug#end()
colorscheme dracula
"python config
au BufNewFile,BufRead *.py 
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set softtabstop=4 |
			\ set textwidth=79 |
			\ set autoindent |
			\ set fileformat=unix |
			\ set expandtab 
let python_highlight_all=1
" go config
au BufNewFile,BufRead *.go
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set autoindent |
			\ set textwidth=79 |
			\ set autoindent |
			\ set fileformat=unix |
			\ set expandtab
" vim-go depend on ominfunc (auto complete after dot)
au filetype go inoremap <buffer> . .<C-x><C-o>

nnoremap <F5> :call <SID>compile_and_run()<CR>
function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "!gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       exec "! g++ -std=c++11 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "!javac %; time java %<"
    elseif &filetype == 'sh'
       exec "!time bash %"
    elseif &filetype == 'python'
       exec "!time python3 %"
		elseif &filetype == 'go'
			 exec "GoBuild"
			 exec "GoRun"
    endif
endfunc

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"source ~/.vim/config/python-mode.vim


set encoding=utf-8 
"语法高亮 
syntax on 
" 
"自动缩进 
set autoindent 
"设置 Backspace 和 Delete 的灵活程度，backspace=2 则没有任何限制 
"设置在哪些模式下使用鼠标功能，mouse=a 表示所有模式 
set mouse=a 
set backspace=2 
"不自动换行 
set nowrap 
"设置超过100字符自动换行 
set textwidth=100 
"智能对齐方式 
set smartindent 
"一个tab是4个字符 
set tabstop=4 
"按一次tab前进4个字符 
set softtabstop=4 
"用空格代替tab 
set expandtab 
"设置自动缩进 
set ai! 
"缩进的字符个数 
set cindent shiftwidth=4 
set autoindent shiftwidth=4 
 
""设置折叠模式 
"set foldcolumn=4 
"光标遇到折叠，折叠就打开 
"set foldopen=all 
"移开折叠时自动关闭折叠 
"set foldclose=all 
""zf zo zc zd zr zm zR zM zn zi zN 
""依缩进折叠 
""   manual  手工定义折叠 
""   indent  更多的缩进表示更高级别的折叠 
""   expr    用表达式来定义折叠 
""   syntax  用语法高亮来定义折叠 
""   diff    对没有更改的文本进行折叠 
""   marker  对文中的标志折叠 
"set foldmethod=syntax 
"启动时不要自动折叠代码 
"set foldlevel=100 
"依标记折叠 
"set foldmethod=marker 
 
"显示行号 
set number 
 
"打开光标的行列位置显示功能 
"set ruler 
 
"显示中文引号 
set ambiwidth=double 
 
"行高亮 
"set cursorline 
"列高亮，与函数列表有冲突 
"set cursorcolumn 
 
 
"高亮搜索的关键字 
set hlsearch 
 
"搜索忽略大小写 
set ignorecase 
 
"设置命令历史行数 
set history=100 
  
"不要闪烁 
"set novisualbell 
 
"显示TAB健 
set list 
set listchars=tab:>-,trail:- 
 
"高亮字符，让其不受100列限制 
":highlight OverLength ctermbg=red ctermfg=white guibg=grey guifg=white 
":match OverLength '\%101v.*' 

filetype plugin indent on
set completeopt=longest,menu




"config vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'


Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'


" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


"目录导航
Bundle 'vim-scripts/The-NERD-tree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let g:netrw_home='~/bak'

"标签导航
Bundle 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"标签导航 要装ctags
Bundle 'vim-scripts/taglist.vim'
set tags=tags;/
let Tlist_Ctags_Cmd="/usr/bin/ctags"
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 0
let Tlist_WinWidth = 25


"状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"if want to use fancy,need to add font patch -> git clone git://gist.github.com/1630581.git ~/.fonts/ttf-dejavu-powerline
"let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'


"括号显示增强
Bundle 'kien/rainbow_parentheses.vim'
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
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

"代码排版缩进标识
Bundle 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '¦'

"主题 molokai
Bundle 'tomasr/molokai'
let g:molokai_original = 1

"自动补全单引号，双引号等 Bundle 'underlog/ClosePairs'
Bundle 'Raimondi/delimitMate'

" 快速加入修改环绕字符
Bundle 'tpope/vim-surround'
"for repeat -> enhance surround.vim, . to repeat command
Bundle 'tpope/vim-repeat'

" for markdown
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1


" for python.vim syntax highlight
Bundle 'hdima/python-syntax'
let python_highlight_all = 1

"for nginx conf file highlight.   need to confirm it works
Bundle 'thiderman/nginx-vim-syntax'

" task list
Bundle 'vim-scripts/TaskList.vim'
map <leader>td <Plug>TaskList

" 编辑时自动语法检查标红, vim-flake8目前还不支持,所以多装一个
" 使用pyflakes,速度比pylint快
Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
"let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_cpp_compiler_options = '-std=c++11'
highlight SyntasticErrorSign guifg=white guibg=black

" python fly check, 弥补syntastic只能打开和保存才检查语法的不足
Bundle 'kevinw/pyflakes-vim'
let g:pyflakes_use_quickfix = 0

"========================== config for plugins end ======================================

"==========================================
" 主题,及一些展示上颜色的修改
"==========================================
"开启语法高亮
syntax enable
syntax on

" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=Monaco:h14
    set guioptions-=T
    set guioptions+=e
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
    set showtabline=1
    set linespace=2
    set noimd
    set t_Co=256
endif


" 修改主题和颜色展示
colorscheme molokai
set background=dark
set t_Co=256

"colorscheme molokai
"colorscheme desert

"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange
"" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" settings for kien/rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



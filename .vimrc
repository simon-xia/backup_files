""set encoding=utf-8 "设置中文字符编码 
set nu!            "显示行号
set smartindent    "智能自动缩进
set tabstop=4    "设置自动缩进和tab宽度 
set softtabstop=4   
set shiftwidth=4
set cindent shiftwidth=4     " 自动缩进4空格
set autoindent               " 自动对齐  
colorscheme  darkburn           " 着色模式
set cursorline              " 突出显示当前行 
set cursorcolumn
set hlsearch                 "搜索高亮
set incsearch                "动态搜索高亮
""set bg=light
set bg=dark
"set guifont=Consolas:h12       " 字体 && 字号  

set t_Co=256       "256色

hi Normal ctermfg=252 ctermbg=none

syntax enable
syntax on

let Tlist_Show_One_File=1      "taglist窗口
let Tlist_Exit_OnlyWindow=1

"用WinManager管理taglist和netrw
let g:winManagerWindowLayout='FileExplorer|TagList' 
nmap wm :WMToggle<cr>

"检测文件类型，方便自动补全
filetype plugin indent on

set completeopt=longest,menu


"========================================================
" Highlight All Math Operator
"========================================================
" C math operators
syn match       cMathOperator     display "[-+/*/%=]"
" C pointer operators
syn match       cPointerOperator  display "->/|/."
" C logical   operators - boolean results
syn match       cLogicalOperator  display "[!<>]=/="
syn match       cLogicalOperator  display "=="
" C bit operators
syn match       cBinaryOperator   display "/(&/||/|/^/|<</|>>/)=/="
"syn match       cBinaryOperator   display "/~"
"syn match       cBinaryOperatorError display "/~="
" More C logical operators - highlight in preference to binary
syn match       cLogicalOperator  display "&&/|||"
syn match       cLogicalOperatorError display "/(&&/|||/)="

" Math Operator
hi cMathOperator            guifg=#3EFFE2
hi cPointerOperator         guifg=#3EFFE2
hi cLogicalOperator         guifg=#3EFFE2
hi cBinaryOperator          guifg=#3EFFE2
hi cBinaryOperatorError     guifg=#3EFFE2
hi cLogicalOperator         guifg=#3EFFE2
hi cLogicalOperatorError    guifg=#3EFFE2

"插入模式下括号的自动补全
:inoremap ( ()<esc>i
:inoremap [ []<esc>i
:inoremap { {}<esc>i
:inoremap ' ''<esc>i
:inoremap " ""<esc>i
:inoremap < <><esc>i



set encoding=utf-8 "设置中文字符编码 
set nu!            "显示行号
set smartindent    "智能自动缩进
set tabstop=4    "设置自动缩进和tab宽度 
set softtabstop=4   
set shiftwidth=4
set cindent shiftwidth=4     " 自动缩进4空格
set autoindent               " 自动对齐  
colorscheme  desert           " 着色模式
""colorscheme  simon           
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

"检测文件类型，方便自动补全
filetype plugin indent on

set completeopt=longest,menu


"插入模式下括号的自动补全
:inoremap ( ()<esc>i
:inoremap [ []<esc>i
:inoremap { {}<esc>i
:inoremap ' ''<esc>i
:inoremap " ""<esc>i
":inoremap < <><esc>i

""""""""""process space between words in Ubuntu 14.04 
if has("gui_gtk2")
	set guifont=DejaVu\ Sans\ Mono\ 12
elseif has("gui_macvim")
	set guifont=DejaVu_Sans_Mono:h14
elseif has("gui_win32")
	set guifont=DejaVu_Sans_Mono:h1
end

""""""""""""""""""""""""""""
"vundle setting
""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'corntrace/bufexplorer'
" a open file per tag
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'vim-scripts/grep.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'yegappan/taglist'
Plugin 'vim-scripts/winmanager'
"jump between *.c and *.h files
Plugin 'vim-scripts/a.vim'
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"fold the code
set foldenable
autocmd FileType c,cpp  setl fdm=syntax | setl fen
set foldlevel=100   " 启动时不要自动折叠代码

""""""""""""""""""""""""""""""
" Quickfix
""""""""""""""""""""""""""""""
" prev fault
nmap <F6> :cn<cr>		
" next fault
nmap <F7> :cp<cr>


""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
""if MySys() == "windows"                "设定windows系统中ctags程序的位置
""let Tlist_Ctags_Cmd = 'ctags'
""elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
""let Tlist_Ctags_Cmd = '/usr/bin/ctags'
""endif
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Left_Window = 1         "在右侧窗口中显示taglist窗口 


""""""""""""""""""""""""""""
"wimManager setting
""""""""""""""""""""""""""""
"开启文件浏览窗口和TagList，对应插件为WinManager 
"let g:winManagerWindowLayout='TagList|FileExplorer' 
let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'
nmap wm :WMToggle<cr> 


" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
" change tab
nnoremap <C-S-l> :bn<CR>
nnoremap <C-S-h> :bN<CR>

" a.vim jump between *.c and *.h files
nnoremap <silent> <F12> :A<CR>

" indentLine plugin
"":set expandtab
"":%retab!  
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
map <leader>l :IndentLinesToggle<CR>
let g:indentLine_char = '|'


" indent guide line plugin	
map <leader>g <leader>ig
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" vim grep
nnoremap <silent> <F3> :Grep<CR>

""""""""""""""""""""""""""""
" cscope
""""""""""""""""""""""""""""

""let $CSCOPE_DB = "/home/simon/cscope"
""if has("cscope")
""	set csprg=/usr/local/bin/cscope
""	set csto=0
""	set cst
""	set nocsverb
""	" add any database in current directory
""	if filereadable("cscope.out")
""		cs add cscope.out
""	" else add database pointed to by environment
""	elseif $CSCOPE_DB != ""
""		cs add $CSCOPE_DB."/".expand('%:h')."/cscope.out"
""	endif
""	set csverb
""endif		

"function Do_CsTag()
    if(executable("cscope") && has("cscope") )
        if(has('win32'))
            silent! execute "!dir /b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        else
            silent! execute "!find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.m" -o -name "*.mm" -o -name "*.java" -o -name "*.py" > cscope.files"
        endif
        silent! execute "!cscope -b"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
"endf


nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>


" Insert current time
:inoremap <F11> <C-R>=strftime("%FT%T%z")<CR>

" hilight one column 
map ,ch :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction


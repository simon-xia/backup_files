set encoding=utf-8 "设置中文字符编码 
set fileencodings=utf-8,gbk
set nu!            "显示行号
set smartindent    "智能自动缩进
set tabstop=4    "设置自动缩进和tab宽度 
set softtabstop=4   
set shiftwidth=4
set cindent shiftwidth=4     " 自动缩进4空格
set autoindent               " 自动对齐  

set cursorline              " 突出显示当前行 
set cursorcolumn
" 设置高亮行列颜色
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" \c to turn on or off
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set hlsearch                 "搜索高亮
set incsearch                "动态搜索高亮
""set bg=light
set bg=dark
"set guifont=Consolas:h12       " 字体 && 字号  

""set t_Co=256       "256色

"hi Normal ctermfg=252 ctermbg=none

syntax enable
syntax on

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
":inoremap < <><esc>i

""""""""""handle space between words in Ubuntu 14.04 
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
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'

" fuzzy search file
Plugin 'kien/ctrlp.vim'

"for text filtering and alignment
Plugin 'godlygeek/tabular'

" mark manager
Plugin 'kshenoy/vim-signature'

" usg tags to manage vim's buf
Plugin 'fholgado/minibufexpl.vim'

Plugin 'amiorin/vim-project'

" indentLine
Plugin 'Yggdroot/indentLine'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/cSyntaxAfter'
" tags index,  indexer depend on the following two plugins
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'yegappan/taglist'
"Plugin 'vim-scripts/winmanager'
"jump between *.c and *.h files
Plugin 'vim-scripts/a.vim'

Plugin 'vim-scripts/EasyGrep'
"Plugin 'vim-scripts/grep.vim'
"keep the same color display in terminal as in GUI
Plugin 'godlygeek/csapprox'
"highlight c/c++ func"
Plugin 'octol/vim-cpp-enhanced-highlight'

" creat ASCII drawing
Plugin 'vim-scripts/DrawIt'

"C Call-Tree Explorer based on cscope
Plugin 'vim-scripts/CCTree'

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

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" YCM
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1

" CtrlP
" exclude files and directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.in,*.out    " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = { 
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links'}

" working start directories
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'

" display file list
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux


" easygrep
let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "tags, *.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"

" easy motion
nmap <Leader>w <Plug>(easymotion-w)
" two char
nmap <Leader>s <Plug>(easymotion-s2)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"fold the code
set foldenable
autocmd FileType c,cpp  setl fdm=syntax | setl fen
set foldlevel=100   " 启动时不要自动折叠代码

" Tabularize
nmap <Leader>h= :Tabularize /=
nmap <Leader>h: :Tabularize /:
nmap <Leader>h:: :Tabularize /:\zs
nmap <Leader>h, :Tabularize /,
nmap <Leader>h<Bar> :Tabularize /

""""""""""""""""""""""""""""""
" Quickfix
""""""""""""""""""""""""""""""
" prev fault
nmap <F6> :cn<cr>		
" next fault
nmap <F7> :cp<cr>

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=20
let g:tagbar_left = 1                                "在左侧  

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
"nmap <Leader>fl :NERDTreeToggle<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize= 20
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

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


"find symbol
nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
"find definition
nmap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
"find who calls me
nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
"find who i call
nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>


" Insert current time
" conflict with full screen F11
":inoremap <F11> <C-R>=strftime("%FT%T%z")<CR>

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

" terminal cursor
if has("autocmd")
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif

set t_Co=256

"CSApprox plugin, make display in terminal the same as in GUI
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
""colorscheme wombat_simon           " 着色模式
"colorscheme wombat256_simon	" 着色模式
colorscheme wombat256_modified	" 着色模式
"colorscheme molokai	" 着色模式
"
" forbid display menu and toolbar
set guioptions-=m
set guioptions-=T
" forbig display scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
" autocmd VimEnter * call ToggleFullscreen()

"copy cut and paste with clipbroad
vnoremap <C-S-x> "+x
vnoremap <C-S-c> "+y
vnoremap <C-S-v> "+p

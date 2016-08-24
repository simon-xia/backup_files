set encoding=utf-8 "设置中文字符编码 
set fileencodings=utf-8,gbk
set nu!            "显示行号
set smartindent    "智能自动缩进
set tabstop=4    "设置自动缩进和tab宽度 
set softtabstop=4   
set shiftwidth=4
set cindent shiftwidth=4     " 自动缩进4空格
set autoindent               " 自动对齐  

"colorscheme wombat256_modified	
colorscheme gruvbox	
"colorscheme lucius_noLineNr
"colorscheme lucius
"colorscheme Tomorrow-Night-Eighties
"let g:lucius_no_term_bg=1 "transparent

""set bg=light
set bg=dark

"colorscheme jellybeans	
"let g:jellybeans_overrides = {
"\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
"\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
"\              'attr': 'bold' },
"\}

" terminal background transparent
hi Normal  ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none

set cursorline              " 突出显示当前行 
set cursorcolumn
" 设置高亮行列颜色
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" \c to turn on or off
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set hlsearch                 "搜索高亮
set incsearch                "动态搜索高亮

"set guifont=Menlo\ Regular:h18
"set guifont=Menlo:h12
""set t_Co=256       "256色


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
":inoremap ' ''<esc>i
:inoremap " ""<esc>i
":inoremap < <><esc>i

""""""""""handle space between words in Ubuntu 14.04 
if has("gui_gtk2")
	set guifont=DejaVu\ Sans\ Mono\ 12
elseif has("gui_macvim")
	set guifont=Menlo\ Regular:h15
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
"Plugin 'corntrace/bufexplorer'
Plugin 'scrooloose/nerdcommenter'

Plugin 'majutsushi/tagbar'

" fuzzy search file
"Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'

"for text filtering and alignment
Plugin 'godlygeek/tabular'

" mark manager
Plugin 'kshenoy/vim-signature'

" display tags to manage vim's buf
Plugin 'fholgado/minibufexpl.vim'


" indentLine
Plugin 'Yggdroot/indentLine'

Plugin 'simon-xia/vim-qlang'

Plugin 'Lokaltog/vim-easymotion'

" Operator highlighting for C-like languages and more 
Plugin 'vim-scripts/cSyntaxAfter'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 
"jump between *.c and *.h files
Plugin 'vim-scripts/a.vim'

Plugin 'vim-scripts/EasyGrep'

"keep the same color display in terminal as in GUI
Plugin 'godlygeek/csapprox'

"highlight c/c++ func"
"Plugin 'octol/vim-cpp-enhanced-highlight'

" creat ASCII drawing
Plugin 'vim-scripts/DrawIt'

"C Call-Tree Explorer based on cscope
"Plugin 'vim-scripts/CCTree'

" golang
Plugin 'fatih/vim-go'

"colorscheme  
Plugin 'jonathanfilip/vim-lucius'
Plugin 'flazz/vim-colorschemes'

" relative number
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" fix iterm bugs
"Plugin 'sjl/vitality.vim'

Plugin 'tpope/vim-surround.git'

" Chinese input method
Plugin 'ybian/smartim'

Plugin 'terryma/vim-multiple-cursors'

" Plugin 'jcf/vim-latex'

Plugin 'vim-ctrlspace/vim-ctrlspace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line


""""""""""""""
" vim-numbertoggle
""""""""""""""
let g:NumberToggleTrigger="<leader>z"


""""""""""""""
" ctags
""""""""""""""
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"


""""""""""""""
" YCM
""""""""""""""
let g:ycm_complete_in_comments=1  " 补全功能在注释中同样有效
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_tags_files=1  " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0 "turn off diagnostics 
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
"mapping
nmap <Leader>gd :YcmDiags<CR>
nnoremap <Leader>gl :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
nnoremap <Leader>gg :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
nnoremap <Leader>ge :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 黑名单,不启用
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'gitcommit' : 1,
      \}


""""""""""""""
" CtrlP
""""""""""""""
" exclude files and directories
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.in,*.out    " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

""let g:ctrlp_custom_ignore = { 
""  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
""  \ 'file': '\v\.(exe|so|dll)$',
""  \ 'link': 'some_bad_symbolic_links'}
""
""" working start directories
""" 'c' - the directory of the current file.
""" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
""" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
""" 0 or '' (empty string) - disable this feature.
""let g:ctrlp_working_path_mode = 'ra'
""
""" display file list
""let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux


""""""""""""""
" easygrep
""""""""""""""
let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyMotion_smartcase = 1
let g:EasyGrepFilesToExclude = "tags, *.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"

""""""""""""""
" easy motion
""""""""""""""
nmap <Leader>1 <Plug>(easymotion-s)
" two char
nmap <Leader>2 <Plug>(easymotion-s2)

" Gif config
map  <Leader>n <Plug>(easymotion-sn)
omap <Leader>n <Plug>(easymotion-tn)
"word
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
"line
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
"map  <C-n> <Plug>(easymotion-next)
"map  <C-n> <Plug>(easymotion-prev)

""""""""""""""
"folding settings
""""""""""""""
set nofoldenable "don't fold by default
"autocmd FileType c,cpp,go  setl fdm=syntax | setl fen
set foldlevel=100
set foldmethod=indent
"let go_syntax_folding=1 

" Enable folding with the spacebar
nnoremap <space> za

" Tabularize
"nmap <Leader>h= :Tabularize /=
"nmap <Leader>h: :Tabularize /:
"nmap <Leader>h:: :Tabularize /:\zs
""nmap <Leader>h, :Tabularize /,
"nmap <Leader>h<Bar> :Tabularize /

""""""""""""""""""""""""""""""
" Quickfix
""""""""""""""""""""""""""""""
" prev fault
nmap <F6> :cn<cr>		
" next fault
nmap <F7> :cp<cr>

""""""""""""""""""""""""""""""
" Tagbar
""""""""""""""""""""""""""""""
nmap <Leader>q :TagbarToggle<CR>
" on MacOSX
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
""if has("gui_macvim")
""	let g:tagbar_ctags_bin='/usr/local/bin/ctags'
""else
""	let g:tagbar_ctags_bin='/usr/bin/ctags'
""end

let g:tagbar_width=20
let g:tagbar_left = 0           

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

""""""""""""""
" nerd tree
""""""""""""""
"nmap <Leader>t :NERDTreeToggle<CR>
nmap <C-\> :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize= 20
" window's position
let NERDTreeWinPos="left"
" show hidden files
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

""""""""""""""
" MiniBufExpl
""""""""""""""
" Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
" change tab
nnoremap <C-S-l> :bn<CR>
nnoremap <C-S-h> :bN<CR>
" change tab without write
set hidden

""""""""""""""
" a.vim
""""""""""""""
" a.vim jump between *.c and *.h files
"nnoremap <silent> <F12> :A<CR>
"nnoremap <Leader>aa :A<CR>
"nnoremap <Leader>av :AV<CR>


" indentLine plugin
"":set expandtab
"":%retab!  
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
"map <Leader>l :IndentLinesToggle<CR>
let g:indentLine_char = '|'


""""""""""""""""""""""""""""
" cscope
""""""""""""""""""""""""""""

" autoload 
let $CSCOPE_DB="/home/simon/cscope"
if has("cscope")
	set csprg=/usr/local/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB."/".expand('%:h')."/cscope.out"
	endif
	set csverb
endif		

"function Do_CsTag()
"    if(executable("cscope") && has("cscope") )
"        if(has('win32'))
"            silent! execute "!dir /b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
"        else
"            silent! execute "!find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.m" -o -name "*.mm" -o -name "*.java" -o -name "*.py" > cscope.files"
"        endif
"        silent! execute "!cscope -b"
"        if filereadable("cscope.out")
"            execute "cs add cscope.out"
"        endif
"    endif
"endf


nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
"find symbol
nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>s :tab split<CR>:cs find s <C-R>=expand("<cword>")<CR><CR>
"find definition
nmap <C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
"find who calls me
nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>

" find this string
nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>

" find the file
nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
"find who include this file
nmap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
"find who i call
nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>

" search cscope and ctags simultaneously
set cst

" 0 for cscope first, 1 for ctags first
set csto=0

" display results in quickfix
""set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
""nmap <Leader>s :cnext<CR>
""nmap <Leader>w :cprev<CR> 


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

set t_Co=256

"CSApprox plugin, make display in terminal the same as in GUI
"let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
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
""fun! ToggleFullscreen()
""    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
""endf
""" 全屏开/关快捷键
""map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
" autocmd VimEnter * call ToggleFullscreen()

"copy cut and paste with clipbroad
vnoremap <C-S-x> "+x
vnoremap <C-S-c> "+y
vnoremap <C-S-v> "+p

" maximise current pane
noremap <C-W>f <C-W>_<C-W><Bar>


""""""""""""""
"vim-go
""""""""""""""
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" go to golang definition
au FileType go nmap <Leader>s <Plug>(go-def-split)
au FileType go nmap <Leader>v <Plug>(go-def-vertical)
au FileType go nmap <Leader>t <Plug>(go-def-tab)


""""""""""""""
" vim-multiple-cursor
""""""""""""""
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-S-n>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


""""""""""""""
" unite.vim
""""""""""""""
"nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <Leader>/ :Unite grep:.<cr>


""""""""""""""
" others
""""""""""""""
"set scrolloff=30

" change cursor shape in ITerm2 on OS X"
if $TERM_PROGRAM =~ "iTerm"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
	let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif



""""""""""""""
" ctrlspace
""""""""""""""
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

"nnoremap <silent><C-p> :CtrlSpace O<CR>
"nnoremap <silent><C-b> :CtrlSpace H<CR>
"nnoremap <silent><C-m> :CtrlSpace B<CR>
"nnoremap <silent><C-t> :CtrlSpace L<CR>

nnoremap <Leader>p :CtrlSpace O<CR>
nnoremap <Leader>b :CtrlSpace H<CR>
nnoremap <Leader>m :CtrlSpace B<CR>
nnoremap <Leader>l :CtrlSpace L<CR>

if has("gui_running")
	" Settings for MacVim and Inconsolata font
	let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
endif
if executable("ag")
	let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:CtrlSpaceSearchTiming = 500

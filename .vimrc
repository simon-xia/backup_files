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
"colorscheme rainbow_night_simon
"colorscheme lucius_noLineNr
colorscheme desert256
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
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

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


set nocompatible              " be iMproved, required
filetype off                  " required


""""""""""""""""""""""""""""
" vim-plug
""""""""""""""""""""""""""""
" Automatic install vim-plug 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"Plug 'Valloric/YouCompleteMe'
"Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Plug 'corntrace/bufexplorer'

"Plug 'scrooloose/nerdcommenter'

Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

" fuzzy search file
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Shougo/unite.vim'
"Plug 'Shougo/vimproc.vim'

" diff
Plug 'mhinz/vim-signify'

"for text filtering and alignment
Plug 'godlygeek/tabular'

" mark manager
Plug 'kshenoy/vim-signature'

" display tags to manage vim's buf
"Plug 'fholgado/minibufexpl.vim'
"Plug 'ap/vim-buftabline'

" indentLine
Plug 'Yggdroot/indentLine'

Plug 'derekwyatt/vim-scala'

Plug 'Lokaltog/vim-easymotion'

" Operator highlighting for C-like languages and more 
Plug 'vim-scripts/cSyntaxAfter'

" git diff
Plug 'mhinz/vim-signify'

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
 
"jump between *.c and *.h files
Plug 'vim-scripts/a.vim'

Plug 'vim-scripts/EasyGrep'

"keep the same color display in terminal as in GUI
Plug 'godlygeek/csapprox'

"highlight c/c++ func"
"Plug 'octol/vim-cpp-enhanced-highlight'

" creat ASCII drawing
Plug 'vim-scripts/DrawIt'

"C Call-Tree Explorer based on cscope
"Plug 'vim-scripts/CCTree'

" golang
Plug 'fatih/vim-go'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'nsf/gocode', {'rtp': 'vim/'}
"colorscheme  
Plug 'jonathanfilip/vim-lucius'
Plug 'flazz/vim-colorschemes'

" relative number
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" fix iterm bugs
"Plug 'sjl/vitality.vim'

"Plug 'tpope/vim-surround.git'

" Chinese input method
Plug 'ybian/smartim'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-fugitive'
" Plug 'jcf/vim-latex'
"
Plug 'haya14busa/incsearch.vim'

"Plug 'vim-ctrlspace/vim-ctrlspace'

" syntax check
Plug 'w0rp/ale'

Plug 'vim-airline/vim-airline'
Plug 'tmhedberg/SimpylFold'
Plug 'tell-k/vim-autopep8'

" Initialize plugin system
call plug#end()

""""""""""""""
" vim-numbertoggle
""""""""""""""
let g:NumberToggleTrigger="<leader>z"

""""""""""""""
" deoplete: auto complete
""""""""""""""
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

""""""""""""""
" ALE
""""""""""""""
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

""""""""""""""
" ctags
""""""""""""""
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
set tags=./.tags;,.tags


""""""""""""""
" YCM
""""""""""""""
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0 "turn off diagnostics 
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

"let g:ycm_complete_in_comments=1  " 补全功能在注释中同样有效
"let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
"let g:ycm_collect_identifiers_from_tags_files=1  " 开启 YCM 基于标签引擎
"map <C-]>  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }


""""""""""""""
" CtrlP
""""""""""""""
" exclude files and directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.in,*.out    " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = { 
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|swp|swo|DS_Store)$',
  \ 'link': 'some_bad_symbolic_links'}
""
""" working start directories
""" 'c' - the directory of the current file.
""" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
""" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
""" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
""
""" display file list
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

nnoremap <Leader>ls :CtrlPBuffer<CR>

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
map <Leader>q :TagbarToggle<CR>
""" on MacOSX
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
""""if has("gui_macvim")
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

let NERDTreeIgnore = ['\.pyc$','\.swp$','\.swo$','\.DS_Store$',]
" MiniBufExpl
""""""""""""""
" Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
" change buf
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
"let $CSCOPE_DB="/home/simon/cscope"
"if has("cscope")
"	set csprg=/usr/local/bin/cscope
"	set csto=0
"	set cst
"	set nocsverb
"	" add any database in current directory
"	if filereadable("cscope.out")
"		cs add cscope.out
"	" else add database pointed to by environment
"	elseif $CSCOPE_DB != ""
"		cs add $CSCOPE_DB."/".expand('%:h')."/cscope.out"
"	endif
"	set csverb
"endif		

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


"nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
""find symbol
"nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
""nmap <C-\>s :tab split<CR>:cs find s <C-R>=expand("<cword>")<CR><CR>
""find definition
"nmap <C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
""find who calls me
"nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
"
"" find this string
"nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
"
"" find the file
"nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
""find who include this file
"nmap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
""find who i call
"nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
"
"" search cscope and ctags simultaneously
"set cst
"
"" 0 for cscope first, 1 for ctags first
"set csto=0
"
"" display results in quickfix
"""set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
"""nmap <Leader>s :cnext<CR>
"""nmap <Leader>w :cprev<CR> 
"

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
let g:go_highlight_extra_types = 1
let g:go_textobj_include_function_doc = 0

"let g:go_fmt_command = "gofmt"
let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"Show type info for the word under your curso
au FileType go nmap <Leader>i <Plug>(go-info)
" use gopath env from shell
let g:go_autodetect_gopath = 0
" go to golang definition
" Current valid options are: `[guru, godef]`
let g:go_def_mode = 'guru'


au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

let g:go_decls_includes = "func,type"

"Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>rf :GoReferrers<CR>
au FileType go nmap <Leader>cr :GoCallers<CR>
au FileType go nmap <Leader>ce :GoCallees<CR>
au FileType go nmap <Leader>cs :GoCallstack<CR>
au FileType go nmap <Leader>cp :GoChannelPeers<CR>

" change it to show a single tab as 4 space
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" jump between *.go and *_test.go"
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

au FileType go nmap <Leader>ff :GoDecls<CR>
au FileType go nmap <Leader>fd :GoDeclsDir<CR>

au FileType go nmap <Leader>fs :GoDefStack<CR>

" go command status (requires vim-go)
set statusline+=%#goStatuslineColor#
set statusline+=%{go#statusline#Show()}
set statusline+=%*

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
"nnoremap <Leader>/ :Unite grep:.<cr>


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
""let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
""let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
""let g:CtrlSpaceSaveWorkspaceOnExit = 1
""
""nnoremap <Leader>p :CtrlSpace O<CR>
""nnoremap <Leader>b :CtrlSpace H<CR>
""nnoremap <Leader>m :CtrlSpace B<CR>
""nnoremap <Leader>l :CtrlSpace L<CR>
""
""let g:CtrlSpaceSearchTiming = 500
""
""set hidden
""set wildignore=.git,.svn,CVS,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc,tags,*.tags
""
""if has("gui_running")
""  " Settings for MacVim and Inconsolata font
""  let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
""endif
""
""if executable("ag")
""    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
""endif
""
""let g:CtrlSpaceIgnoredFiles = '\v(tmp|temp|Godeps)[\/]'




""""""""""""""
"neocomplete
""""""""""""""
" Enable autocompletion
""set omnifunc=syntaxcomplete#Complete
""" Select keyword as you type
""set completeopt=longest,menuone
""" Disable AutoComplPop.
""let g:acp_enableAtStartup = 0
""" Use neocomplete.
""let g:neocomplete#enable_at_startup = 1
""" Use smartcase.
""let g:neocomplete#enable_smart_case = 1
""" Set minimum syntax keyword length.
""let g:neocomplete#sources#syntax#min_keyword_length = 3
""let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
""
""" Define dictionary.
""let g:neocomplete#sources#dictionary#dictionaries = {
""    \ 'default' : '',
""    \ 'vimshell' : $HOME.'/.vimshell_hist',
""    \ 'scheme' : $HOME.'/.gosh_completions'
""        \ }
""
""" Define keyword.
""if !exists('g:neocomplete#keyword_patterns')
""    let g:neocomplete#keyword_patterns = {}
""endif
""let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
""inoremap <expr><C-g>     neocomplete#undo_completion()
""inoremap <expr><C-l>     neocomplete#complete_common_string()
""

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
""autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
""autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
""autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
""autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
""autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
""autocmd FileType go setlocal omnifunc=go#complete#Complete
""" Enable heavy omni completion.
""if !exists('g:neocomplete#sources#omni#input_patterns')
""  let g:neocomplete#sources#omni#input_patterns = {}
""endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
""let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"use mouse to do smooth scrolling
set mouse=a

" vim-fugitive
"set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
"nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
"nnoremap <silent> <leader>gp :Git push<CR>
"nnoremap <silent> <leader>gr :Gread<CR>
"nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
"nnoremap <silent> <leader>gi :Git add -p %<CR>
"nnoremap <silent> <leader>gg :SignifyToggle<CR>
"

set autoread

""""""""""""""
" airline
""""""""""""""
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'


""""""""""""""
" incsearch
""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

""""""""""""""
"gutentags
""""""""""""""
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

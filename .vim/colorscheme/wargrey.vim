" Vim color file - wargrey
" Generated by http://bytefluent.com/vivify 2014-11-20
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "wargrey"

hi IncSearch guifg=#ffff00 guibg=#00ff00 guisp=#00ff00 gui=NONE ctermfg=11 ctermbg=10 cterm=NONE
hi WildMenu guifg=#000000 guibg=#008b8b guisp=#008b8b gui=NONE ctermfg=NONE ctermbg=30 cterm=NONE
hi SignColumn guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#a9a9a9 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Typedef guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi Title guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi Folded guifg=#bebebe guibg=#4d4d4d guisp=#4d4d4d gui=NONE ctermfg=7 ctermbg=239 cterm=NONE
hi PreCondit guifg=#00ffff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Include guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#a9a9a9 guibg=NONE guisp=NONE gui=underline ctermfg=248 ctermbg=NONE cterm=underline
"hi CTagsMember -- no settings --
hi NonText guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#0000ff guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=21 ctermbg=248 cterm=NONE
hi ErrorMsg guifg=#8b0000 guibg=#a9a9a9 guisp=#a9a9a9 gui=bold ctermfg=88 ctermbg=248 cterm=bold
hi Ignore guifg=#bebebe guibg=#a9a9a9 guisp=#a9a9a9 gui=bold ctermfg=7 ctermbg=248 cterm=bold
hi Debug guifg=#8b0000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
"hi PMenuSbar -- no settings --
hi Identifier guifg=#a52a2a guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Conditional guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#00ffff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Todo guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi Special guifg=#8b008b guibg=NONE guisp=NONE gui=NONE ctermfg=90 ctermbg=NONE cterm=NONE
hi LineNr guifg=#a52a2a guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#bebebe guibg=NONE guisp=NONE gui=underline ctermfg=7 ctermbg=NONE cterm=underline
hi Normal guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Label guifg=#a9a9a9 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi Search guifg=#00ffff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi Statement guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi SpellRare guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
"hi EnumerationValue -- no settings --
hi Comment guifg=#a9a9a9 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Character guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi Float guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Number guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Boolean guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Operator guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
hi TabLineFill guifg=#bebebe guibg=#0000ff guisp=#0000ff gui=NONE ctermfg=7 ctermbg=21 cterm=NONE
hi Question guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi DiffDelete guifg=#000000 guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi ModeMsg guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
"hi CursorColumn -- no settings --
hi Define guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi Function guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#bebebe guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi PreProc guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#f0e68c guibg=#6b8e23 guisp=#6b8e23 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
hi MoreMsg guifg=#006400 guibg=NONE guisp=NONE gui=NONE ctermfg=22 ctermbg=NONE cterm=NONE
hi SpellCap guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#a9a9a9 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Exception guifg=#8b008b guibg=NONE guisp=NONE gui=NONE ctermfg=90 ctermbg=NONE cterm=NONE
hi Keyword guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Type guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#ffff00 guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=11 ctermbg=248 cterm=NONE
hi Cursor guifg=#708090 guibg=#f0e68c guisp=#f0e68c gui=NONE ctermfg=60 ctermbg=228 cterm=NONE
hi SpellLocal guifg=#a52a2a guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi Error guifg=#8b0000 guibg=#a9a9a9 guisp=#a9a9a9 gui=bold ctermfg=88 ctermbg=248 cterm=bold
hi PMenu guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Constant guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#8b008b guibg=NONE guisp=NONE gui=NONE ctermfg=90 ctermbg=NONE cterm=NONE
hi String guifg=#a52a2a guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#a52a2a guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
"hi LocalVariable -- no settings --
hi Repeat guifg=#00ffff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi SpellBad guifg=#8b0000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
"hi CTagsClass -- no settings --
hi Directory guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Structure guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi Macro guifg=#8b008b guibg=NONE guisp=NONE gui=NONE ctermfg=90 ctermbg=NONE cterm=NONE
hi Underlined guifg=#0000ff guibg=NONE guisp=NONE gui=underline ctermfg=21 ctermbg=NONE cterm=underline
hi DiffAdd guifg=#00ff00 guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=10 ctermbg=248 cterm=NONE
hi TabLine guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
"hi cursorim -- no settings --
"hi clear -- no settings --
hi underline guifg=#afafff guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi lcursor guifg=NONE guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi browsedirectory guifg=#660000 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=52 ctermbg=15 cterm=NONE
hi namespace guifg=#006400 guibg=NONE guisp=NONE gui=NONE ctermfg=22 ctermbg=NONE cterm=NONE
hi tablinefillsel guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE

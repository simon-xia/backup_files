"C语言函数高亮
" Highlight All Function
"========================================================
syn match   cFunction "/<[a-zA-Z_][a-zA-Z_0-9]*/>[^()]*)("me=e-2
syn match   cFunction "/<[a-zA-Z_][a-zA-Z_0-9]*/>/s*("me=e-1
hi cFunction        gui=NONE  guifg=#B5A1FF


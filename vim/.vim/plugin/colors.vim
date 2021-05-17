set background=dark
set termguicolors

colorscheme nord

" Statusline
" :h mode() to see all modes
" let g:currentmode={
"     \ 'n'      : 'Normal',
"     \ 'no'     : 'N·Operator Pending ',
"     \ 'v'      : 'Visual ',
"     \ 'V'      : 'V·Line ',
"     \ "\<C-V>" : 'V·Block ',
"     \ 's'      : 'Select ',
"     \ 'S'      : 'S·Line ',
"     \ "\<C-S>" : 'S·Block ',
"     \ 'i'      : 'Insert ',
"     \ 'R'      : 'Replace ',
"     \ 'Rv'     : 'V·Replace ',
"     \ 'c'      : 'Command ',
"     \ 'cv'     : 'Vim Ex ',
"     \ 'ce'     : 'Ex ',
"     \ 'r'      : 'Prompt ',
"     \ 'rm'     : 'More ',
"     \ 'r?'     : 'Confirm ',
"     \ '!'      : 'Shell ',
"     \ 't'      : 'Terminal '
"     \}

" " " Automatically change the statusline color depending on mode
" " function! ChangeStatuslineColor()
" "   if (mode() =~# '\v(n|no)')
" "     exe 'hi! StatusLine ctermbg=008'
" "   elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
" "     exe 'hi! StatusLine ctermbg=005'
" "   elseif (mode() ==# 'i')
" "     exe 'hi! StatusLine ctermbg=004'
" "   else
" "     exe 'hi! StatusLine ctermbg=006'
" "   endif
" "   return ''
" " endfunction

" " " Find out current buffer's size and output it.
" function! FileSize()
"   let bytes = getfsize(expand('%:p'))
"   if (bytes >= 1024)
"     let kbytes = bytes / 1024
"   endif
"   if (exists('kbytes') && kbytes >= 1000)
"     let mbytes = kbytes / 1000
"   endif

"   if bytes <= 0
"     return '0'
"   endif

"   if (exists('mbytes'))
"     return mbytes . 'MB '
"   elseif (exists('kbytes'))
"     return kbytes . 'KB '
"   else
"     return bytes . 'B '
"   endif
" endfunction

" function! ReadOnly()
"   if &readonly || !&modifiable
"     return ''
"   else
"     return ''
" endfunction

" function! GitInfo()
"   let git = fugitive#head()
"   if git != ''
"     return ' '.fugitive#head()
"   else
"     return ''
" endfunction

" " Very minimal statusline
" function! GitBranch()
"   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
" endfunction

" function! StatuslineGit()
"   let l:branchname = GitBranch()
"   if l:branchname != ''
"     return '  '.l:branchname
"   else
"     return ''
" endfunction

" set statusline=
" set statusline+=\ 
" " set statusline+=%{ChangeStatuslineColor()}
" set statusline+=%{toupper(g:currentmode[mode()])}
" set statusline+=\ 
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" " set statusline+=%<%F\ %{ReadOnly()}\ %m\ %w\
" set statusline+=\ 
" " set statusline+=%#LineNr#
" " set statusline+=%#WildMenu#
" set statusline+=%#TabLineSel#
" set statusline+=\ 
" set statusline+=%f
" set statusline+=\ 
" " set statusline+=%#PmenuSel#
" set statusline+=%m
" set statusline+=\ 
" set statusline+=%8*\ [%n]
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ 
" " set statusline+=\ %p%%
" " set statusline+=\ %l:%c
" set statusline+=%#TabLineSel#
" set statusline+=%3p%%\ \ %l:%c
" " set statusline+=%0*\ %3p%%\ \ %l:%c
" set statusline+=\ 
" set statusline+=\ 

" barow modules
" let g:barow = {
"       \  'modes': {
"       \    'normal': [' ', 'BarowNormal'],
"       \    'insert': ['i', 'BarowInsert'],
"       \    'replace': ['r', 'BarowReplace'],
"       \    'visual': ['v', 'BarowVisual'],
"       \    'v-line': ['l', 'BarowVisual'],
"       \    'v-block': ['b', 'BarowVisual'],
"       \    'select': ['s', 'BarowVisual'],
"       \    'command': ['c', 'BarowCommand'],
"       \    'shell-ex': ['!', 'BarowCommand'],
"       \    'terminal': ['t', 'BarowTerminal'],
"       \    'prompt': ['p', 'BarowNormal'],
"       \    'inactive': [' ', 'BarowModeNC']
"       \  },
"       \  'statusline': ['Barow', 'BarowNC'],
"       \  'tabline': ['BarowTab', 'BarowTabSel', 'BarowTabFill'],
"       \  'buf_name': {
"       \    'empty': '',
"       \    'hi': ['BarowBufName', 'BarowBufNameNC']
"      \  },
"       \  'read_only': {
"       \    'value': 'ro',
"       \    'hi': ['BarowRO', 'BarowRONC']
"       \  },
"       \  'buf_changed': {
"       \    'value': '*',
"       \    'hi': ['BarowChange', 'BarowChangeNC']
"       \  },
"       \  'tab_changed': {
"       \    'value': '*',
"       \    'hi': ['BarowTChange', 'BarowTChangeNC']
"       \  },
"       \  'line_percent': {
"       \    'hi': ['BarowLPercent', 'BarowLPercentNC']
"       \  },
"       \  'row_col': {
"       \    'hi': ['BarowRowCol', 'BarowRowColNC']
"       \  },
"       \  'modules': [
"       \    [ 'barowGit#branch', 'BarowHint' ],
"       \    [ 'barowLSP#error', 'BarowError' ],
"       \    [ 'barowLSP#warning', 'BarowWarning' ],
"       \    [ 'barowLSP#info', 'BarowInfo' ],
"       \    [ 'barowLSP#hint', 'BarowHint' ],
"       \    [ 'barowLSP#coc_status', 'StatusLine' ],
"       \    [ 'barowLSP#ale_status', 'StatusLine' ]
"       \  ]
"       \} 

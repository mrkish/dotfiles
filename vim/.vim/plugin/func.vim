" " Jump to last cursor position unless it's invalid or in an event handler
" augroup vimrcEx
"   autocmd!
"   autocmd FileType text setlocal textwidth=78
"   autocmd BufReadPost *
"         \ if line("'\"") > 0 && line("'\"") <= line("$") |
"         \     exe "normal g`\"" |
"         \ endif
" augroup END

" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter * set number norelativenumber
" augroup END


" augroup qs_colors
"   autocmd!
"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup END

" " Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
" highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup qs_colors
"   autocmd!
"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup END


" " Use tab for trigger completion with characters ahead and navigate.
" " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


" nnoremap <silent> <C-h> :call WinMove('h')<CR>
" nnoremap <silent> <C-j> :call WinMove('j')<CR>
" nnoremap <silent> <C-k> :call WinMove('k')<CR>
" nnoremap <silent> <C-l> :call WinMove('l')<CR>

" function! WinMove(key)
"     let t:curwin = winnr()
"     exec "wincmd ".a:key
"     " if (t:curwin == winnr())
"     "     if (match(a:key,'[jk]'))
"     "         wincmd v
"     "     else
"     "         wincmd s
"     "     endif
"     "     exec "wincmd ".a:key
"     " endif
" endfunction


" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction


" function! s:getVisualSelection()
"     let [line_start, column_start] = getpos("'<")[1:2]
"     let [line_end, column_end] = getpos("'>")[1:2]
"     let lines = getline(line_start, line_end)

"     if len(lines) == 0
"         return ""
"     endif

"     let lines[-1] = lines[-1][:column_end - (&selection == "inclusive" ? 1 : 2)]
"     let lines[0] = lines[0][column_start - 1:]

"     return join(lines, "\n")
" endfunction


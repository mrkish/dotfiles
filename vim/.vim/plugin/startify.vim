let g:startify_disable_at_vimenter = 1

let g:startify_bookmarks = [
            \ '~/.zshrc',
            \ '~/.config/nvim',
            \ '~/.vim',
            \ '~/.config/nvim/init.vim',
            \ ]


let g:startify_change_to_dir = 1
let g:startify_list_order = [
  \ ['   LRU:'],
  \ 'files',
  \ ['   LRU within this dir:'],
  \ 'dir',
  \ ['   Sessions:'],
  \ 'sessions',
  \ ['   Bookmarks:'],
  \ 'bookmarks',
  \ ]

let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ 'bundle/.*/doc',
            \ '/Users/mhi/local/vim/share/vim/vim74/doc',
            \ ]

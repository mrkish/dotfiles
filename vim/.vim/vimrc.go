set runtimepath^="/home/mrk/.vim_go_runtime"

source /home/mrk/.vim_go_runtime/vimrc/basic.vim
source /home/mrk/.vim_go_runtime/vimrc/filetypes.vim
source /home/mrk/.vim_go_runtime/vimrc/plugins.vim
source /home/mrk/.vim_go_runtime/vimrc/extended.vim

try
  source /home/mrk/.vim_go_runtime/custom_config.vim
catch
endtry

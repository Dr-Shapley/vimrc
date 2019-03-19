set runtimepath+=~/.vim_runtime
autocmd vimenter * NERDTree
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
set number
if has ("gui_running")
    set guifont=Lucida_Console:h11
endif
if has ("gui_running")
    "GUI is running or is about to start.
    "Maximize gvim window.
    set lines=35 columns=150
else
    " This is console Vim.
    if exists("+lines")
        set lines=50
    endif
    if exists("+columns")
        set colums=100
    endif
endif
try
source ~/.vim_runtime/my_configs.vim
catch
endtry
call plug#begin('~/.vim/plugged')

" For MS Windows, this is probably better:
"call plug#begin('~/vimfiles/plugged')

Plug 'thinca/vim-quickrun'

call plug#end()

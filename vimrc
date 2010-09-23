if &t_Co > 2 || has("gui_running")
        syntax enable
        set nohlsearch
        colorscheme torte
endif

if has("gui_running")
        set lines=30 columns=80
endif

if has("autocmd")
        filetype plugin indent on
endif

set autoindent
set ts=4
set sw=4
set wildmode=list:longest,full


" Subversion command
com! Commit -nargs=1 !svn ci "%" -m '<args>'

" authorization.conf
:autocmd BufRead authorization.conf noremap <C-M> :w!<CR>:!cp % /Volumes/192.168.1.23/SVN/authorization.conf



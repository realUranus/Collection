set nocompatible              " be iMproved, required
filetype off                  " required
" 字体设置
:set guifont=Monospace/40

call plug#begin('~/.vim/plugged')
" The following are examples of different formats supported.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" git repos on your local machine (i.e. when working on your own plugin)
"" Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
" Systastic
Plug 'scrooloose/syntastic'
" tagbar
Plug 'majutsushi/tagbar' 
" ulsnips
Plug 'sirver/ultisnips'
" vim-snippets
Plug 'honza/vim-snippets'
" leaderF
Plug 'yggdroot/leaderf'
" asyncrun
Plug 'skywind3000/asyncrun.vim'
" nerdtree
Plug 'scrooloose/nerdtree'
" markdown
Plug 'tpope/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 忽略大小写
:set ignorecase
" tab 设置
set shiftwidth=4
set softtabstop=4
set nu

"colorscheme molokai
" colorscheme solarized 
" nerdtree config
map <F2> :NERDTreeToggle<CR>
" tab hotkey
noremap <silent><tab>m :tabnew<cr>
noremap <silent><tab>e :tabclose<cr>
noremap <silent><tab>n :tabn<cr>
noremap <silent><tab>p :tabp<cr>
noremap <silent><leader>t :tabnew<cr>
noremap <silent><leader>g :tabclose<cr>
noremap <silent><leader>1 :tabn 1<cr>
noremap <silent><leader>2 :tabn 2<cr>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>
noremap <silent><s-tab> :tabnext<cr>
" save operate
noremap <silent><leader>s :w<CR>
" noremap <C-S>:update<CR>
inoremap <silent><s-tab> <ESC>:tabnext<CR>
" compile setting
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    if &filetype == 'c'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc

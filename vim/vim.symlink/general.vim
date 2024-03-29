set background=dark
"Remove toolbar
if has("gui_running")
	set guioptions-=T
	nmap <silent> <C-Tab> :maca _cycleWindows:<CR>
	nmap <silent> <C-S-Tab> :maca _cycleWindowsBackwards:<CR>
	set balloondelay=100000 " Long balloon to avoir huge tooltip in ruby files
endif
colorscheme gotham256
"colorscheme ir_black
syntax on

set binary noeol
set nobackup
set noswapfile
set nojoinspaces

set number
set showmode
set tabstop=2 shiftwidth=2 softtabstop=2 et
set hidden

set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,.DS_Store,*.pyc

set cursorline

set list listchars=tab:»\ ,trail:·

filetype on
filetype plugin indent on
set backspace=2
set vb
runtime macros/matchit.vim

set encoding=utf-8
set fileencoding=utf-8
set hlsearch
set stl=%f\ %m\ %r\ L:\ %l/%L[%p%%]\ C:\ %c\ Buf:\ #%n
set laststatus=2
set history=100
set scrolloff=5
set incsearch
set ignorecase
set infercase " Gives case sensitive autocompletion
set smartcase
set gdefault " Always search/replace globally

" Typing :W -> :w
cnoreabbrev W w

"php settings
au BufRead,BufNewFile *.php setfiletype php
au BufRead,BufNewFile *.ctp setfiletype php
let php_htmlInStrings = 1

" Thorfile, Rakefile, Vagrantfile and Gemfile Guardfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,Guardfile}    set ft=ruby

"Key bidings
let mapleader = ","
let g:mapleader = ","
nmap <silent> <c-n> :NERDTreeToggle<CR>
noremap <silent> <Space> :silent noh<Bar>echo<CR>
"Moving around windows (taken from Derek Wyatt)
noremap <silent> ,h :wincmd h<cr>
noremap <silent> ,j :wincmd j<cr>
noremap <silent> ,k :wincmd k<cr>
noremap <silent> ,l :wincmd l<cr>

" Tab navigation
noremap <silent> <D-A-Left> :tabp<CR>
noremap <silent> <D-A-Right> :tabn<CR>

" Indent with tab in visual mode
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv

"Faster prev-buffer
nnoremap <leader><leader> <c-^>
"Faster save
nnoremap <silent> <leader>w :w<CR>

"bind BExec plugin to <leader>r (r -> run)
nmap <silent> <leader>r :call Bexec()<CR>
vmap <silent> <leader>r :call BexecVisual()<CR>

"TList config
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_Inc_Winwidth = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Process_File_Always = 1
let Tlist_Enable_Fold_Column = 0
let tlist_php_settings = 'php;c:class;d:constant;f:function'

"NERDTree
let NERDTreeIgnore = ['\.pyc$']

"Don't need f1 for help
nmap <F1> <nop>

nmap <silent> <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_switch_buffer = 0

let g:miniBufExplCheckDupeBufs = 0 "Faster miniBufExpl


"4 spaces for markdown
autocmd FileType markdown setlocal sw=4 sts=4 et

set exrc    " enable per-directory .vimrc files
set secure  " disable unsafe commands in local .vimrc files"

" Set lang for macvim also, apparently system locale isnt loaded by default
lang fr_CA.UTF-8


" Powerline
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
set guifont=Droid\ Sans\ Mono\ for\ Powerline
set noshowmode
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

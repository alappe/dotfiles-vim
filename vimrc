set nocompatible
set autoindent
set noerrorbells
set backspace=indent,eol,start
set magic

" Pathogen:
call pathogen#infect()

filetype plugin indent on
syntax enable " :

set shellslash

" One Backupdir for all files…
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.,/tmp

colo desert

set textwidth=72
set showcmd
set history=50
set incsearch 

set wildmode=longest,list,full

" replace tab with 4 spaces
" set tabstop=4
" set shiftwidth=4
" set expandtab

set spelllang=de_19,en

" set encoding=latin1
set encoding=utf-8

autocmd FileType mail set tw=72 sw=4 tabstop=4 expandtab spell nu
autocmd FileType ruby set tw=72 sw=2 tabstop=2 expandtab spell nu
autocmd FileType jade set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType text set tw=72 sw=4 tabstop=4 expandtab spell
autocmd FileType php set binary noeol tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
autocmd FileType tex  set tw=80 nu tabstop=4 sw=4 expandtab nu spell 
autocmd FileType cpp set tw=0 cindent nu sw=4
autocmd FileType make set tw=0
autocmd FileType awk set tw=0
autocmd FileType dot set tw=0
autocmd FileType xml set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
autocmd FileType javascript set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
autocmd FileType coffee set tabstop=2 shiftwidth=2 number expandtab
autocmd FileType scss set softtabstop=2 shiftwidth=2 noexpandtab number
autocmd FileType yaml set softtabstop=2 shiftwidth=2 expandtab number
autocmd FileType typoscript set textwidth=0 number
autocmd FileType html set tw=0 number
autocmd FileType xhtml set tw=0 number
autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

map <C-N> :NERDTree<cr>

" ctags
set tags=tags;$HOME
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"
nmap <CR> :TagbarToggle<CR>

if has("gui_running")
    " Let's try it... exclusively on vim7x
    set spell
    set spelllang=de_19,en "Alte Rechtschreibung
    " Imitate OS X applications:
    map <D-w> :q<CR>
    map <D-s> :w<CR>

    " better font for me:
    set gfn=DejaVu\ Sans\ Mono:h14

    " Some more...
    map <D-t> :tabnew<CR>
    "map <D-w> :tabclose<CR>
    map <D-n> :tabNext<CR>
    map <D-A-n> :tabNext<CR>
    set gfn=DejaVu\ Sans\ Mono:h14

    " solarized for gui…
    colo solarized

    " Hide the toolbar:
    set go-=T
endif

" matchit
source $VIMRUNTIME/macros/matchit.vim

" xmledit (xml.vim)
let xml_use_xhtml = 1

" Gundo history tree:
nnoremap <C-h> :GundoToggle<CR>

" Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_use_password_in_gitconfig = 1

" Keep some lines on top before scrolling:
set scrolloff=5

" Extended statusline using fugitive to show git branch:
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set ruler

" CtrlP:
" 0 - don’t manage working directory.
" 1 - the parent directory of the current file.
" 2 - the nearest ancestor that contains one of these directories or
" files: .git/ .hg/ .svn/ .bzr/ _darcs/
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': [
          \ 'ruby', 
          \ 'coffee',
          \ 'javascript',
          \ 'json',
          \ 'scss'
      \ ],
      \ 'passive_filetypes': [
          \ 'puppet',
          \ 'php',
          \ 'sh'
        \ ]
  \ }

" CoffeeTags
let g:tagbar_type_coffee = {
 \ 'kinds' : [
 \   'f:functions',
 \   'o:object'
 \ ],
 \ 'kind2scope' : {
 \  'f' : 'object',
 \   'o' : 'object'
 \},
 \ 'sro' : ".",
 \ 'ctagsbin' : 'coffeetags',
 \ 'ctagsargs' : '--include-vars ',
 \}

finish

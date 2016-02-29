let mapleader=";"

" 文件类型探测
filetype on
filetype plugin on

" 光标移动到一行的开头和末尾
nmap LB 0
nmap LE $

" 用于复制粘贴
vnoremap <Leader>y "+y
nmap <Leader>p "+p

set incsearch
set ignorecase
set nocompatible
set wildmenu

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" 设置配色方案
"set background=dark
"colorscheme solarized
"colorscheme github
"colorscheme sonofobsidian
"colorscheme molokai


" 禁止闪烁
set gcr=a:block-blinkon0
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

" 辅助信息
set laststatus=2
set ruler
set number
set cursorline
set cursorcolumn
set hlsearch

set guifont=YaHei\ Consolas\ Hybrid\ 11.5

syntax enable
syntax on

filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

set foldmethod=indent
set nofoldenable

nmap <Leader>ch :A<CR>
nmap <Leader>sch :AS<CR>

nmap <F4> :TagbarToggle<CR>
let g:tagbar_width = 20
autocmd VimEnter * nested :call tagbar#autoopen(1)
"let g:tagbar_left = 1       " on the left side
let g:tagbar_right = 1     " on the right side

" cscope
nnoremap <Leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <Leader>l :call ToggleLocationList()<CR>
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

" auto-ctags
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git', '.svn']
let g:auto_ctags_tags_name = 'tags'
let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
let g:auto_ctags_filetype_mode = 1

" nerdtree
map <F8> :NERDTreeToggle<CR>
" turn to next
nmap <Leader>l :tabn<CR>
" turn to prev
nmap <Leader>k :tabp<CR>
let NERDTreeWinSize=32
"let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

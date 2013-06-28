set nocompatible

let mapleader=","

if filereadable(expand("~/.vim/vundle.vim"))
  source ~/.vim/vundle.vim
endif

syntax on

set mouse=a
set number
set hidden
set textwidth=79
set colorcolumn=80
set laststatus=2

set noswapfile
set nobackup
set nowb

set incsearch
set hlsearch

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set background=dark
colorscheme solarized

set fillchars=vert:\ 
hi VertSplit ctermbg=NONE

nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

map ,n :NERDTreeToggle<CR>
nnoremap <silent> <C-\> :NERDTreeFind<CR>
nmap <silent> // :nohlsearch<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_by_filename = 1

function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and
  " cursor position
  let @/=_s
  call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()
nmap ,w :StripTrailingWhitespaces<CR>
let g:buffergator_suppress_keymaps=1
nnoremap <silent> ,b :BuffergatorToggle<CR>
let g:LustyJugglerShowKeys='a'

nnoremap <silent> K :call CloseSingleConque()<CR>:GitGrep <cword><CR>

map ,jm :CloseSingleConque<CR>:CtrlP app/models<CR>
map ,jc :CloseSingleConque<CR>:CtrlP app/controllers<CR>
map ,jv :CloseSingleConque<CR>:CtrlP app/views<CR>
map ,jh :CloseSingleConque<CR>:CtrlP app/helpers<CR>
map ,jl :CloseSingleConque<CR>:CtrlP lib<CR>
map ,js :CloseSingleConque<CR>:CtrlP spec<CR>
map ,jC :CloseSingleConque<CR>:CtrlP config<CR>
map <leader>rT <Plug>SendTestToTmux
map <leader>rt <Plug>SendFocusedTestToTmux

let g:Powerline_symbols='fancy'
let g:Powerline_theme='skwp'
let g:Powerline_colorscheme='skwp'

"show the error list automatically
let g:syntastic_auto_loc_list=1
""don't care about warnings
let g:syntastic_quiet_warnings=0


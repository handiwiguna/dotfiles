filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Ruby, Rails
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'skwp/vim-conque'
Bundle 'skwp/vim-ruby-conque'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-dispatch'
Bundle 'jiangmiao/auto-pairs'
Bundle 'jgdavey/vim-turbux'

" Git
Bundle 'tjennings/git-grep-vim'
Bundle 'tpope/vim-fugitive'

" HTML, Template
Bundle 'slim-template/vim-slim'

" Visual improvement
Bundle 'skwp/vim-colors-solarized'
Bundle 'skwp/vim-powerline'

" Other Improvement
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'godlygeek/tabular'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'sjbach/lusty'
Bundle 'christoomey/vim-tmux-navigator'

filetype plugin indent on

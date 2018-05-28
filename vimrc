set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required

" User interface
set guifont=SauceCodePowerline-Regular:h18
highlight LineNr ctermfg=grey

syntax on

" Autoreload on config save
au! BufWritePost .vimrc so %
au! BufWritePost .gvimrc so %

" Customize highlighting for certain files
au BufRead,BufNewFile Fastfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby
au BufRead,BufNewFile Podfile set filetype=ruby
au BufRead,BufNewFile *.podspec set filetype=ruby
au BufRead,BufNewFile Dangerfile set filetype=ruby

" Searches
set hlsearch              " highlight search results
set incsearch             " search whilst typing
set ignorecase            " case insensitive searching
set smartcase             " override ignorecase if upper case typed

" Keep more info in memory to speed things up
set hidden
set history=100

set backspace=indent,eol,start " Backspace settings
set smarttab                   " Delete entire shiftwidth of tabs when they're inserted
set showcmd                    " Show command information on the right side of the command line
set nostartofline              " Keep cursor in the same place after saves
set autoindent                 " Indent the next line matching the previous line
set autoindent                 " Indent the next line matching the previous line
set smartindent                " Smart auto-indent when creating a new line
set tabstop=2                  " Number of spaces each tab counts for
set shiftwidth=2               " The space << and >> moves the lines
set softtabstop=2              " Number of spaces for some tab operations
set shiftround                 " Round << and >> to multiples of shiftwidth
set expandtab                  " Insert spaces instead of actual tabs
set smarttab                   " Delete entire shiftwidth of tabs when they're inserted
set encoding=utf-8
set number                     " Show line numbers

augroup trailing_highlight
  autocmd!
  autocmd BufWinEnter * match ErrorMsg /\s\+$/
  autocmd InsertEnter * match ErrorMsg /\s\+\%#\@<!$/
  autocmd InsertLeave * match ErrorMsg /\s\+$/
augroup END

" Disable beeping
set noerrorbells visualbell t_vb=

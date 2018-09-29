set nocompatible
filetype off

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'
  
  "
  " Fuzzy Finder
  "
  Plugin 'wincent/command-t'

  "
  " Colorschemes
  "
  Plugin 'flazz/vim-colorschemes'
  Plugin 'jonathanfilip/lucius'

  "
  " Ruby / Rails
  "
  Plugin 'tpope/vim-endwise'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-rake'

  "
  " General Editing
  "
  Plugin 'easymotion/vim-easymotion'
  Plugin 'brysgo/quickfixfix'
  Plugin 'godlygeek/tabular'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'luochen1990/rainbow'
  Plugin 'vim-scripts/paredit.vim'

  "
  " Searching
  "
  Plugin 'epmatsw/ag.vim'

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'

  "
  " Languages
  "
  Plugin 'guns/vim-clojure-static'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'wlangstroth/vim-racket.git'

  "
  " Development Tool Integration
  "
  Plugin 'airblade/vim-gitgutter'
  Plugin 'tpope/vim-dispatch'
  Plugin 'tpope/vim-fugitive'

  call vundle#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif

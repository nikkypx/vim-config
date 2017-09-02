" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

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
  Plugin 'tpope/vim-rbenv'

  "
  " General Editing
  "
  Plugin 'easymotion/vim-easymotion'
  Plugin 'brysgo/quickfixfix'
  Plugin 'godlygeek/tabular'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-projectionist'
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
  Plugin 'tpope/vim-abolish'

  "
  " Navigation
  "
  Plugin 'majutsushi/tagbar'
  Plugin 'scrooloose/nerdtree'

  "
  " Languages
  "
  Plugin 'elzr/vim-json'
  Plugin 'guns/vim-clojure-static'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'vim-ruby/vim-ruby'

  "
  " Development Tool Integration
  "
  Plugin 'airblade/vim-gitgutter'
  Plugin 'pivotal/tmux-config'
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

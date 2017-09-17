# Vim-config

> Vim configuration tailored towards ruby development

## Installation
(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

```bash
git clone https://github.com/nikkypx/vim-config.git ~/.vim && ~/.vim/bin/install
```

## Included Plugins

### Ruby / Rails
* [vim-rails](https://github.com/tpope/vim-rails) lets `gf` and `:Rextract` work on partials, highlights Rails functions.
* [vim-endwise](https://github.com/tpope/vim-endwise) automatically puts in `end`s for your` if` and `do` blocks.
* [rake.vim](https://github.com/tpope/vim-rake) gives you a lot of the same niceties that you get from rails.vim except for non-Rails Ruby projects.

### General Editing
* [vim-surround](https://github.com/tpope/vim-surround) helps add/remove/change surround parentheses, quotes, and XML tags.  Inside of `"yolokitten"`, type `cs"'` to switch the surround double quotes to single quotes.  `t` can generally be used to refer to XML tags, so inside of `<tag>Hello</tag>` you can do `cit` to modify the word "Hello."  To add quotes around something, you can use the command `ys` followed by a motion and the character to surround it with.  For instance, inside of "hello", typing `ysiw(` will change it to "( hello )".
* [vim-repeat](https://github.com/tpope/vim-repeat) lets plugins override `.` (the period) to repeat commands.  Allows you to use `.` with the vim-surround magic above.
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired) contains a bunch of shortcuts for longer commands that start with colons.  Some of the better ones are:
    * `]q` and `[q` to go back and forth through the quickfix list (the result of using `:Ag` or `:Ack`).
    * `[f` and `]f` to navigate through files in the same directory as the current file.
    * `]n` and `[n` to go through merge conflicts.
    * It's not provided by this plugin, but `[h` and `]h` let you move through working copy changes in git in a similar manner.

### Navigation
* [nerdtree](https://github.com/scrooloose/nerdtree) puts a directory tree on the left side of the screen.  Press `\` to open it at your project root, or `Shift-\` to open it with the current file selected.  You can press `m` to move, delete, or create files.  Press `?` inside the tree to get more help.

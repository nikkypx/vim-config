" Keybindings
" -----------

let mapleader = ","
let maplocalleader="\\"
inoremap jk <esc>`^

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
map <leader>v   :vsp<CR>

" Move between screens
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" Open .vimrc file in new tab. Think Command + , [Preferences...] but with Shift.
map <D-<>       :tabedit ~/.vimrc<CR>

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Undo/redo - Doesn't MacVim already have this?
map <D-z>       :earlier 1<CR>
map <D-Z>       :later 1<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G`` :delmarks z<CR>:echo "Reformatted."<CR>

" Jump to a new line in insert mode
imap <D-CR>     <Esc>o

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>

" Open and close the quickfix window
map <leader>qo  :copen<CR>
map <leader>qc  :cclose<CR>

" Previous/next buffers
map <M-D-Left>  :bp<CR>
map <M-D-Right> :bn<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

map <leader>rt :!~/.vim/bin/update_ctags 2>/dev/null &<CR>

" Git blame
map <leader>g   :Gblame<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle
map <D-/>       <plug>NERDCommenterToggle
imap <D-/>      <Esc><plug>NERDCommenterToggle i

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

map <F12> :write<CR>:RunTest<CR>
imap <F12> <ESC><F12>
map <F11> :write<CR>:RunTestLine<CR>
imap <F11> <ESC><F11>
map <F10> :write<CR>:RunTestAgain<CR>
imap <F10> <ESC><F10>
map <F9> :write<CR>:RunTestPrevious<CR>
imap <F9> <ESC><F9>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Easy access to the shell
map <Leader><Leader> :!

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Recalculate diff when it gets messed up.
nmap du :diffupdate<CR>

" Gundo.vim
map <leader>u :GundoToggle<CR>

" ctrlp
" <leader>f is the default trigger (set in init/ctrlp.vim)
nnoremap <silent> <leader>F :CtrlPClearAllCaches<CR>:CtrlPCurWD<CR>

" Additional mapping for buffer search
nnoremap <silent> <leader>bb :CtrlPBuffer<cr>
map <D-e> :CtrlPBuffer<CR>

" Map most recently used
nnoremap <silent> <C-p> :CtrlPMRU<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>

" Mappings inherited from FuzzyFinder
map <leader><C-N> :CtrlPCurWD<CR>
map <leader>n :CtrlPCurWD<CR>
map <D-N> :CtrlPCurWD<CR>

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Cmd-Shift-F searches the whole project (like in TextMate, RubyMine, etc.)
map <D-F> :Ag<Space>

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t> <Esc>:tabnew<CR>

abbrev des describe
abbrev bpry require 'pry'; binding.pry

set t_Co=256

set wildmode=longest,list
set wildmenu

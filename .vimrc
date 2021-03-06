syntax on


if &term =~ "xterm"
  " 256 colors
  let &t_Co = 256
  " restore screen after quitting
  let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l\<Esc>8"
  if has("terminfo")
    let &t_Sf = "\<Esc>[3%p1%dm"
    let &t_Sb = "\<Esc>[4%p1%dm"
  else
    let &t_Sf = "\<Esc>[3%dm"
    let &t_Sb = "\<Esc>[4%dm"
  endif
endif


" auto-complete settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>



" Personal settings
set background=dark
colorscheme distinguished
filetype on
au BufNewFile,BufRead *.tt set filetype=html

set autoindent
set expandtab
set incsearch
set ruler
set showmode
set shiftround
set shiftwidth=4
set smartcase
set tabstop=4
set wildignore=*.o,*.obj,*.bak,*.bak
set notimeout
set ttimeout
set timeoutlen=100

set hlsearch
map <F2> :NERDTreeToggle<CR>
map <F3> use Data::Dumper;$Data::Dumper::Sortkeys=1;$Data::Dumper::Quotekeys=0;$Data::Dumper::Indent=2;<CR>print Dumper<Esc>
map sp :set syntax=python<CR>
map sj :set syntax=json<CR>

inoremap {<CR>  {<CR>}<Esc>O<TAB>


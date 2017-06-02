set background=dark
colorscheme skittles_dark_cw
set t_Co=256
syntax enable
set number
set mouse=a
set ruler
set textwidth=80
let &colorcolumn=join(range(81,999),",")
set modeline
set listchars=tab:>_
set list
match TrailingWhitespace /\s\+$/
map <silent><F2> :setlocal spell! spelllang=en_us<CR>
map <silent><F3> :setlocal list!<CR>

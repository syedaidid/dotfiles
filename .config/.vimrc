call plug#begin()

Plug 'tpope/vim-sensible'

" Plugin for airline status bar 
Plug 'vim-airline/vim-airline'

" Tokyonight theme 
 Plug 'ghifarit53/tokyonight-vim'

" Nerdtree  
Plug 'preservim/nerdtree'

" Copy and paste
Plug 'christoomey/vim-system-copy'

" Make thing more colorful 
Plug 'sheerun/vim-polyglot'


" enable color in hex color code
Plug 'lilydjwg/colorizer'

Plug 'rafi/awesome-vim-colorschemes'

Plug 'ackyshake/VimCompletesMe'

Plug 'tmsvg/pear-tree'



call plug#end()

"-----------------------------------------------------------------------------------------------------------------------------------------------------:

" Syntac on 
syntax on

"Set number 
set number relativenumber

" tokyonight theme apply
" set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" Avoid terminal transparency
let &t_ut=''

" Make airline_powerline and tabs to tokyonight
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" Keybinding for NERDTreeToggle
map <F5> :NERDTreeToggle<CR>

" Keybinding for copy and paste 
nnoremap <silent> <LocalLeader>[ :bp
nnoremap <silent> <LocalLeader>] :bn

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

set cursorline

autocmd FileType vim let b:vcm_tab_complete = 'vim'

inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme tokyonight
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

:let mapleader = "\<Space>"


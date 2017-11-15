call plug#begin('~/.local/share/nvim/plugged')

Plug 'neomake/neomake'

Plug 'zhou13/vim-easyescape'

Plug 'ryanoasis/nerd-fonts'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline-themes'

Plug 'vim-airline/vim-airline'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-surround'

Plug 'ahw/vim-hooks'

Plug 'terryma/vim-smooth-scroll'

Plug 'chriskempson/base16-vim'

Plug 'flazz/vim-colorschemes'

Plug 'scrooloose/NerdTree'
call plug#end()

" Color and theme
let colo = 'Tomorrow-Night-Eighties'
set background=dark

" Default options
set relativenumber
set number
set encoding=utf-8

" Airline config options, need to figure out font
set guifont=Source\ Code\ Pro\ Medium\ for\ Powerline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
let g:airline_enable_branch = 1
let g:airline_detect_whitespace=1
let g:airline_section_y=""

" Nerd Tree config options
map <C-n> :NerdTreeToggle<CR>

" Turns off shitty parenthesis highlighting 
let g:loaded_matchparen = 1

" Smooth Scrolling 
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 5, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 5, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 5, 4)<CR>

" Enter makes a new line without going into insert mode
nmap <S-Enter> 0<ESC>
nmap <CR> o<Esc>

" Unbinds arrow keys
for prefix in ['i', 'n', 'v']
for key in ['<UP>', '<DOWN>', '<LEFT>', '<RIGHT>']
exe prefix . "noremap " . key . " <Nop>"
endfor
endfor

" makes ctrl-s save
noremap <silent> <C-S> :update<cr>
vnoremap <silent> <C-S> <C-C>:update<cr>
inoremap <silent> <C-S> <C-O>:update<cr>

" no hightlight on searches
set nohlsearch

" uses ctrl-hjkl to navigate panes
nmap <silent> <c-k> :wincmd l<CR>
nmap <silent> <c-j> :wincmd h<CR>
nmap <silent> <c-l> :wincmd k<CR>
nmap <silent> <c-h> :wincmd j<CR>


set expandtab
set textwidth=120
set tabstop=4
set shiftwidth=4
set autoindent

" keymap settings
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

execute pathogen#infect()
execute pathogen#helptags()
filetype off
filetype plugin indent on
syntax enable
set t_Co=256
colorscheme solarized
set background=dark
set number

" settings for syntax analyzer
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" airline config
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Haskell
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Racer
set hidden
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/usr/src/rust/src/"

" LatexBox
let g:LatexBox_show_warnings = 0
let g:LatexBox_viewer = "evince"

" Buffers shortcut
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
" nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <C-Tab> :bnext<CR>

" Move to the previous buffer
nmap <C-S-Tab> :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
" nmap <C>bl :ls<CR>

" gvim
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guifont=UbuntuMono\ 14

" disable beep on error
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

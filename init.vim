call plug#begin("~/.vim/plugged")
  " Themes
  Plug 'dracula/vim'

  " Nerdtree
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'thoughtbot/vim-rspec'

  " UI
  Plug 'ryanoasis/vim-devicons'
  Plug 'airblade/vim-gitgutter'
  
  " Airline for the tabs
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Editing goodies
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-commentary'
  Plug 'easymotion/vim-easymotion'
  Plug 'tommcdo/vim-lion'
  Plug 'justinmk/vim-sneak'

  " Ruby on Rails
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-bundler'

  " Search And Essentials
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'pelodelfuego/vim-swoop'

  " Misc
  Plug 'xianzhon/vim-code-runner'


  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-tabnine', 'coc-solargraph']
call plug#end()

" Config Section

" SPC as leader = <3
let mapleader = " "
set nu

" Opening Private Configs
nnoremap <silent> <leader>fp :e ~/.config/nvim/init.vim <cr>
nnoremap <silent> <leader>fc :e ~/.config/nvim/coc.vim <cr>
nnoremap <silent> <leader>fC :e ~/.config/nvim/coc-settings.json <cr>
nnoremap <leader>fr :so ~/.config/nvim/init.vim <cr>

" Theme
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme dracula

Plug 'dracula/vim'

" Nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <silent> <leader>e :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction

nnoremap <Leader>v :call OpenTerminal()<CR>

" Move between split panels
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <Leader><space> :FZF<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Change tabs with alt
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Change tabs with , + 1...9
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Change tabs with ALT + 1...9
nmap <M-1> <Plug>AirlineSelectTab1
nmap <M-2> <Plug>AirlineSelectTab2
nmap <M-3> <Plug>AirlineSelectTab3
nmap <M-4> <Plug>AirlineSelectTab4
nmap <M-5> <Plug>AirlineSelectTab5
nmap <M-6> <Plug>AirlineSelectTab6
nmap <M-7> <Plug>AirlineSelectTab7
nmap <M-8> <Plug>AirlineSelectTab8
nmap <M-9> <Plug>AirlineSelectTab9
 
" " Editor ney keybindings
nmap ç :wall! <CR>
nmap <leader>k :bd <CR>

" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>
imap <M-BS> <C-W>

" Make  Y copy until end of the line
nnoremap Y y$ 

" Swoop
let g:swoopUsefaultKeyMap = 0
nmap <Leader>ss :call Swoop()<CR>
vmap <Leader>ss :call SwoopSelection()<CR>
nmap <Leader>sS :call SwoopMulti()<CR>
vmap <Leader>sS :call SwoopMultiSelection()<CR>

nmap gs <Plug>(easymotion-prefix)

" Rails better shortcuts
nmap <Leader>a :A <CR>
nmap <Leader>A :AV <CR>

nmap <Leader>rc :Econtroller 
nmap <leader>ru :Efixtures 
nmap <leader>rhu:Ehelper 
nmap <leader>ri :Einitializer 
nmap <leader>rl :Elocale 
nmap <leader>r@ :Emailer 
nmap <leader>rn :Emigration 
nmap <leader>rm :Emodel 
nmap <leader>rs :Eschema 
nmap <leader>rt :Espec  
nmap <leader>ry :Estylesheet 
nmap <leader>rk :Etask 
nmap <leader>rv :Eview 

" RSpec.vim mappings
map <Leader>tv :call RunCurrentSpecFile()<CR>
map <Leader>ts :call RunNearestSpec()<CR>
map <Leader>tr :call RunLastSpec()<CR>
map <Leader>ta :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch bundle exec rspec {spec}"

source ~/.config/nvim/coc.vim

call plug#begin()
  Plug 'fatih/vim-go'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'	
  Plug 'vim-airline/vim-airline-themes'
  Plug 'dylanaraps/wal.vim'
  Plug 'mechatroner/rainbow_csv'
  Plug 'posva/vim-vue'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'flazz/vim-colorschemes'
  Plug 'tpope/vim-fugitive'
  Plug 'posva/vim-vue'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'yaegassy/coc-volar', { 'do': 'yarn install --frozen-lockfile' }
  Plug 'yaegassy/coc-volar-tools', { 'do': 'yarn install --frozen-lockfile' }
  Plug 'joshdick/onedark.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
  Plug 'tpope/vim-surround'
call plug#end()

" Vim-Go config
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
map <C-b> :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_list_type = "quickfix"
let g:go_gopls_enabled = 1
let g:go_def_mode = 'gopls'
let mapleader = ","
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" General
set nu
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set bg=dark
syntax on
map <C-l> :bnext<cr>
map <C-h> :bprevious<cr>

" Gruvbox setup
colorscheme gruvbox
" colorscheme wal

set autowrite

" NERDTree
"autocmd VimEnter * NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1

" Vue CoC
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

au BufNewFile *.vue 0r ~/.vim/templates/vue_option_template.vue

" Terminal Toggle
nnoremap <Leader>t :term<CR>

function! ToggleTerminal()
  if &buftype == 'terminal'
    bclose
  else
    terminal
  endif
endfunction

" Javascript Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

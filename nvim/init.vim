call plug#begin('~/.config/nvim/plugged')
  Plug 'fatih/vim-go'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'	
  Plug 'vim-airline/vim-airline-themes'
  Plug 'dylanaraps/wal.vim'
  Plug 'chrisbra/csv.vim'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'flazz/vim-colorschemes'
  Plug 'tpope/vim-fugitive'
  Plug 'posva/vim-vue'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'yaegassy/coc-volar', { 'do': 'yarn install --frozen-lockfile' }
  Plug 'yaegassy/coc-volar-tools', { 'do': 'yarn install --frozen-lockfile' }
  Plug 'Yggdroot/indentLine'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
  Plug 'tpope/vim-surround'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'alvan/vim-closetag'
  Plug 'sheerun/vim-polyglot'
  Plug 'voldikss/vim-floaterm'
  Plug 'ryanoasis/vim-devicons'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'preservim/tagbar'
  Plug 'kshenoy/vim-signature'
  Plug 'vimcolorschemes/vimcolorschemes'
  Plug 'folke/tokyonight.nvim'

  Plug 'psf/black', { 'branch': 'stable' }
  Plug 'tell-k/vim-autopep8'
  Plug 'google/yapf'

  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'junegunn/vim-emoji'
  Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

" Vim-Go config
filetype plugin on
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
map <C-b> :cclose<CR>
let g:go_list_type = "quickfix"
let g:go_gopls_enabled = 1
let g:go_def_mode = 'gopls'
let mapleader = ","
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_addtags_transform = "camelcase"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_fmt_autosave = 1
let g:go_metalinter_enabled = ['vet', 'errcheck', 'golint']
let g:go_metalinter_autosave = 0
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_auto_type_info = 1
"let g:go_auto_sameids = 1
set updatetime=100
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
autocmd FileType go nmap <leader>gb  <Plug>(go-build)
autocmd FileType go nmap <leader>grn  <Plug>(go-run)
autocmd FileType go nmap <Leader>gi <Plug>(go-info)
autocmd FileType go nmap <leader>gt  <Plug>(go-test)
autocmd FileType go nmap <leader>gtf  <Plug>(go-test-func)
autocmd FileType go nmap <Leader>gc <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>gcc <cmd>GoCallers<cr>

" General
set nu
set expandtab
set tabstop=2
"set softtabstop=2
"set shiftwidth=2
set list lcs:tab:\┊\ 
set bg=dark
syntax on
set encoding=utf8
map <C-l> :bnext<cr>
map <C-h> :bprevious<cr>
map <C-g> :bdelete<cr>
"set guifont=DroidSansMono_Nerd_Font:h16
set guifont=DroidSansMono\ Nerd\ Font:h16
" Auto-save all buffers every x seconds
"autocmd BufEnter * let g:autosave_interval = 60 " Set interval to 60 seconds (change as needed)
"autocmd CursorHold,CursorHoldI * silent! wa
highlight FoldColumn guibg=#282c34 guifg=#abb2bf
highlight SignColumn guibg=#282c34 guifg=#abb2bf
highlight Folded guibg=#282c34 guifg=#abb2bf

" Colorscheme setup
colorscheme gruvbox
"colorscheme PaperColor
"colorscheme molokai
"colorscheme onedark
"colorscheme tokyonight
set background=dark
syntax on
" colorscheme wal
"
set termguicolors
hi Normal       ctermbg=none guibg=none
hi NormalNC     ctermbg=none guibg=none
hi SignColumn   ctermbg=none guibg=none
hi NormalFloat  ctermbg=none guibg=none
hi FloatBorder  ctermbg=none guibg=none
hi VertSplit    ctermbg=none guibg=none
hi StatusLine   ctermbg=none guibg=none
hi TabLineFill  ctermbg=none guibg=none"

set autowrite

" NERDTree
"autocmd VimEnter * NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeDirArrowExpandable="+"
let NERDTreeDirArrowCollapsible="~"

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'
"let g:airline_theme='term'
"let g:airline_theme='powerlineish'
let g:airline_theme='gruvbox'


" Floaterm
"nnoremap <Leader>t :FloatermToggle<CR>
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <Leader>z   :FloatermToggle<CR>
tnoremap   <silent>   <Leader>z   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <Leader>1    :FloatermPrev<CR>
tnoremap   <silent>   <Leader>1    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <Leader>2    :FloatermNext<CR>
tnoremap   <silent>   <Leader>2    <C-\><C-n>:FloatermNext<CR>
tnoremap <silent>     <C-j> <C-\><C-n>
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_position = 'center'
highlight NormalFloat guibg=#1e1e1e
let g:floaterm_winblend = 10


" Javascript Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"HTML Close Tag 
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.jsx'

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1

au BufNewFile *.vue 0r ~/.vim/templates/vue_option_template.vue

" CoC
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-json', 'coc-go', 'coc-pyright']  " list of CoC extensions needed
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"""""" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> grr <Plug>(coc-references-resume)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>cd <Plug>(coc-diagnostics)

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

autocmd CursorHold * silent call CocActionAsync('highlight')

" Define an autocommand to trigger CocAction('doHover') only when editing files
"
nnoremap <silent> <leader>hv :call CocAction('doHover')<CR>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
nnoremap <silent> <leader>h :call CocAction('doHover')<CR>


" Git
function! GitAuthorOfCurrentLine()
    " Get the line number of the current cursor position
    let lnum = line('.')
    " Get the filename of the current buffer
    let filename = expand('%:p')
    " Run Git blame on the file and filter the output to only show the line of interest
    let blame_output = systemlist('git blame --line-porcelain ' . filename . ' | grep "^author " | sed -n ' . lnum . 'p')
    " Extract the author name from the blame output
    let author = substitute(blame_output[0], '^author ', '', '')
    " Display the author name in a new Vim window
    execute 'new | setlocal buftype=nofile | setlocal bufhidden=hide | setlocal noswapfile' 
    call append(0, 'Git author of current line: ' . author)
endfunction
nnoremap <Leader>ga :call GitAuthorOfCurrentLine()<CR>

" Telescope 
" Find files using Telescope command-line sugar.
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tr <cmd>Telescope resume<cr>
nnoremap <leader>tm <cmd>Telescope marks<cr>
nnoremap <leader>tc <cmd>Telescope commands<cr>

" Tagbar
nmap <leader>tbt :TagbarToggle<CR>

" Fzf
nnoremap <leader>fs :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fr :Rg<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fc :Commands<CR>
nnoremap <leader>frs :FzfResume<CR>


" Use ripgrep as the default command for fzf
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'
  command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --hidden --no-heading --color=always --glob "!.git/*" '.shellescape(<q-args>), 1,
    \   fzf#vim#with_preview(), <bang>0)
endif

" Keybinding to invoke Rg command
nnoremap <leader>rg :Rg<CR>



" Vimgrep
" Map <Leader>f to search for a string and open the quickfix list
nnoremap <Leader>f :vimgrep /<C-r><C-w>/ %<CR>:copen<CR>

" CSS Color
" Enable css-color in CSS files
"au BufRead,BufNewFile *.css,*.scss,*.sass,*.less,*.html,*.vue,*.php call css_color_enable()

nmap <leader>pb :Black<CR>
nmap <leader>pa :Autopep8<CR>
nmap <leader>py :Yapf<CR>

" Ultisnips
"let g:UltiSnipsSnippetDirectories=["Ul"]

" Lazygit
nnoremap <silent> <leader>lg :FloatermNew lazygit<CR>

" Fold
" zo - open
" zc - close
" zm - close all
" zn - open all
autocmd FileType html setlocal foldmethod=syntax
autocmd FileType html setlocal foldlevel=1
set foldmethod=syntax
set foldlevel=99

" Load devicons
lua require'nvim-web-devicons'.setup {}

" Optional: Use devicons in the status line
set statusline+=%{WebDevIconsGetFileTypeSymbol()}

" Map :Emoji command
command! -nargs=1 Emoji execute "normal! i\<C-v>u" . substitute(a:1, 'U\+', '', '')

command! BufOnly execute '%bdelete|edit#|bdelete#'


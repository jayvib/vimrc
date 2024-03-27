" this will install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
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
  Plug 'navarasu/onedark.nvim'
  Plug 'Yggdroot/indentLine'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
  Plug 'tpope/vim-surround'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'alvan/vim-closetag'
  Plug 'sheerun/vim-polyglot'
  Plug 'voldikss/vim-floaterm'
  Plug 'ryanoasis/vim-devicons'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'SirVer/ultisnips'
  Plug 'fatih/molokai'
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" Vim-Go config
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
let g:go_metalinter_enabled = ['golint', 'vet', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['golint', 'vet']
let g:go_metalinter_deadline = "5s"
let g:go_auto_type_info = 1
"let g:go_auto_sameids = 1
set updatetime=100
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" General
set nu
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set bg=dark
syntax on
set encoding=utf8
map <C-l> :bnext<cr>
map <C-h> :bprevious<cr>
set guifont=DroidSansMono_Nerd_Font:h11
set guifont=DroidSansMono\ Nerd\ Font:h11

" Colorscheme setup
"colorscheme gruvbox
colorscheme PaperColor
"colorscheme molokai
set background=dark
" colorscheme wal

set autowrite

" NERDTree
"autocmd VimEnter * NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeDirArrowExpandable="+"
let NERDTreeDirArrowCollapsible="~"

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'


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
hi Floaterm guibg=black


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
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions needed
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"""""" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

autocmd CursorHold * silent call CocActionAsync('highlight')

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

" line number
set nu
set relativenumber 
set ruler
"set cursorline

set undofile
set undodir='~/.vim/undodir'

" directory
" set autochdir

" mouse
set mouse=a " allow mouse

" tab
set tabstop=4
set shiftwidth=4
set expandtab
"set smartindent " next line
"set autoindent " current line
set textwidth=120
"set smarttab

" window size
" nmap <A-h>+  :resize +3<CR>
" nmap <A-h>-  :resize -3<CR>
" nmap <A-w>+  :vertical resize +3<CR>
" nmap <A-w>-  :vertical resize -3<CR>

" start terminal
noremap <C-\><C-l> :belowright vert term<cr>
noremap <C-\><C-j> :below term<cr>
" tnoremap <C-n> <c-\><c-n>


" install plug-vim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
call plug#begin()

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'tmux-plugins/vim-tmux'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'powerline/fonts', {'do': './install.sh'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/vim-easy-align'
Plug 'jpalardy/vim-slime'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'Shougo/defx.nvim'
Plug 'preservim/tagbar'
Plug 'kien/rainbow_parentheses.vim'
"Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-jedi'
"Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
"Plug 'voldikss/vim-codelf'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tpope/vim-surround'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'lfv89/vim-interestingwords'
Plug 'dense-analysis/ale'
Plug 'Chiel92/vim-autoformat'
Plug 'mbbill/undotree'
Plug 'farmergreg/vim-lastplace'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'rking/ag.vim'
Plug 'itchyny/vim-cursorword'

" Initialize plugin system
call plug#end()

" easymotion
nmap ss <Plug>(easymotion-s2)

" easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" vim-slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_python_ipython = 1

" airline 
let g:airline#extensions#tabline#enabled=1 " Smart tab line
let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#left_sep=' '
" let g:airline#extensions#tabline#left_alt_sep='|'
set laststatus=2  " show state
set t_Co=256      " colorize vim in xshell when connected in windows
"nmap <C-h> :bp<CR>
"nmap <C-l> :bn<CR>
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set ambiwidth=double
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>h <Plug>AirlineSelectPrevTab
nmap <leader>l <Plug>AirlineSelectNextTab
nmap <leader>q :bd<CR>

" airline-themes
"let g:airline_theme='desertink'
"let g:airline_theme='moloai'
"let g:airline_theme='bubblegum' " select theme

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" tagbar
"nmap <C-t> :TagbarToggle<CR>

" rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rainbow#pairs = [['(', ')'], ['[', ']']]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
"let g:rainbow_active = 1

" vim-flake8, syntastic
let python_highlight_all=1
syntax enable
syntax on

"" ncm2 
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone " ,noselect
"" inoremap <C-c> <ESC>
"" make it fast
"let ncm2#popup_delay = 5
"let ncm2#complete_length = [[1, 1]]
"" Use new fuzzy based matches
"let g:ncm2#matcher = 'substrfuzzy'

" vim-slime
" tmux
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_python_ipython = 1
" screen:
" leg g:slime_target = "screen"
" let g:slime_default_config = {"sessionname": "", "windowname": "0"}
" let g:slime_python_ipython = 1

"""" Disable Jedi-vim autocompletion and enable call-signatures options
"let g:jedi#auto_initialization = 1
"let g:jedi#completions_enabled = 1
"let g:jedi#auto_vim_configuration = 1
"let g:jedi#smart_auto_mappings = 1
"let g:jedi#popup_on_dot = 0
"let g:jedi#show_call_signatures = "1"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_stubs_command = "<leader>s"
"let g:jedi#goto_definitions_command = "<C-]>"
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"

"colorscheme morning

" coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

let g:session_autoload = 'no'
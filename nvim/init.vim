""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Start of custom suff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set leader key
let g:mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Split and Tabbed Files 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navingation to Ctrl + hjkl 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting splits size bit more friendly, Ctrl + up/down/left/right
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Remove | which act like a speartion of windowsl
" set fillchars+=vert:\
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Netrw File explorer 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
" autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside the VIM 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>tt :vnew term://zsh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Line numbers 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers, with relative numbers. (hybrid version), https://jeffkreeftmeijer.com/vim-number/
set number relativenumber   

" reset unfocused window line number configs to non-relative numbers.
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer stuff 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAB and Shift + TAB to move next and previous buffers
noremap <TAB> :bnext<CR>
noremap <S-TAB> :bprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Make life bit more easier 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl + s to save 
noremap <C-s> :w<CR> 
noremap <C-Q> :wq!<CR>
noremap <C-c> <Esc>
" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"Better tabbing
vnoremap < <gv
vnoremap > >gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other stuff 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                           " Enables syntax highlighing
syntax on
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
" set nobackup                            " This is recommended by coc
" set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

" config for intchyny/lightline.vim plugin
" check this for more info https://github.com/itchyny/lightline.vim
set laststatus=2
set noshowmode          " Hide --INSERT-- 


au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
" cmap w!! w !sudo tee %
"

"""""""""""""""""""""""""""""""""""""""""
" => Plugins using Plug
"""""""""""""""""""""""""""""""""""""""""
" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'itchyny/lightline.vim'
" Plug 'mhartington/oceanic-next'           " Vim syntax color
Plug  'joshdick/onedark.vim'              " Vim one dark syntax
Plug 'haishanh/night-owl.vim'
Plug 'ap/vim-css-color'
Plug 'vifm/vifm.vim'                      " Vi[m] like File Manager
Plug 'tpope/vim-surround'
Plug 'ap/vim-buftabline'                  " Easily navigate to buffers
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Enable fzf inside vim

" GoLang support for vim , commands (:Go{Build | Install | Test | TestFunc | Run | Import | Drop | Doc | AddTags | RemoveTags | Lint  | Vet ..
" Coverage | Def | Implements | Callees | Refrerrers .... } 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " GoLang support for vim
call plug#end()


"""""""""""""""""""""""""""""""""""""""""
" => Plugin configs 
"""""""""""""""""""""""""""""""""""""""""
" FZF configs
" more examples see https://github.com/junegunn/fzf/blob/master/README-VIM.md
map <C-R> :FZF<CR>
" FZF End 

" config for oceanic-next threme
"if (has("termguicolors"))
" set termguicolors
"endif
"colorscheme OceanicNext
" End of oceanic-next theme

" Config onedark.vim
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme onedark
" colorscheme night-owl 
" To enable the lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }
" End of one dark vim config

" Vifm configuration 
noremap <Leader>vv :Vifm<CR>
noremap <Leader>vs :VsplitVifm<CR>
noremap <Leader>sp :SplitVifm<CR>
noremap <Leader>dv :DiffVifm<CR>
noremap <Leader>tv :TabVifm<CR>
" End Vifm config
"""""""""""""""""""""""""""""""""""""""""
" => Resources 
"""""""""""""""""""""""""""""""""""""""""
" Mapping help
" For more details check this https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
"
" :verbose map , (this list all the location map begins with ,)
" 
" special mapping keys
" Ctrl-I      Tab
" Ctrl-[      Esc
" Ctrl-M      Enter
" Ctrl-H      Backspace
" 
" <BS>           Backspace
" <Tab>          Tab
" <CR>           Enter
" <Enter>        Enter
" <Return>       Enter
" <Esc>          Escape
" <Space>        Space
" <Up>           Up arrow
" <Down>         Down arrow
" <Left>         Left arrow
" <Right>        Right arrow
" <F1> - <F12>   Function keys 1 to 12
" #1, #2..#9,#0  Function keys F1 to F9, F10
" <Insert>       Insert
" <Del>          Delete
" <Home>         Home
" <End>          End
" <PageUp>       Page-Up
" <PageDown>     Page-Down
" <bar>          the '|' character, which otherwise needs to be escaped '\|'

" source $HOME/.config/nvim/general/settings.vim
" source $HOME/.config/nvim/keys/mappings.vim



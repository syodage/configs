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
Plug 'joshdick/onedark.vim'              " Vim one dark syntax
Plug 'haishanh/night-owl.vim'
Plug 'ap/vim-css-color'
Plug 'vifm/vifm.vim'                      " Vi[m] like File Manager
Plug 'tpope/vim-surround'
Plug 'ap/vim-buftabline'                  " Easily navigate to buffers
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Enable fzf inside vim

" Vim Ranger(Terminal File Manager) pluging
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" GoLang support for vim , commands (:Go{Build | Install | Test | TestFunc | Run | Import | Drop | Doc | AddTags | RemoveTags | Lint  | Vet ..
" Coverage | Def | Implements | Callees | Refrerrers .... } 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " GoLang support for vim
call plug#end()


"""""""""""""""""""""""""""""""""""""""""
" => FZF configs
"""""""""""""""""""""""""""""""""""""""""
" more examples see https://github.com/junegunn/fzf/blob/master/README-VIM.md
map <C-R> :FZF<CR>

" End of FZF
"""""""""""""""""""""""""""""""""""""""""
" => onedark.vim configs
"""""""""""""""""""""""""""""""""""""""""
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
" End of onedark
"""""""""""""""""""""""""""""""""""""""""
" => night-owl.vim configs
"""""""""""""""""""""""""""""""""""""""""
" colorscheme night-owl 
" End of night-owl
"""""""""""""""""""""""""""""""""""""""""
" => lightline configs
"""""""""""""""""""""""""""""""""""""""""
" To enable the lightline theme
let g:lightline = { 'colorscheme': 'onedark' }
" --INSERT-- is unnecessary so remove it
set noshowmode

" End of one dark vim config
"""""""""""""""""""""""""""""""""""""""""
" => Vifm configs
"""""""""""""""""""""""""""""""""""""""""
" noremap <Leader>vv :Vifm<CR>
" noremap <Leader>vs :VsplitVifm<CR>
" noremap <Leader>sp :SplitVifm<CR>
" noremap <Leader>dv :DiffVifm<CR>
" noremap <Leader>tv :TabVifm<CR>
" End Vifm config
"""""""""""""""""""""""""""""""""""""""""
" => Ranger configs 
"""""""""""""""""""""""""""""""""""""""""
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
" Draw inner pane borders 
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
" Make Ranger to be hidden after picking a file
" let g:rnvimr_enable_picker = 1
" Hide the files included in gitignore
" let g:rnvimr_hide_gitignore = 1
" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
" let g:rnvimr_enable_bw = 1
" Add a Shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 70
" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
" Link Cursorline into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine

" Key mapping
" Map space + r to toggle ranger
nmap <space>r :RnvimrToggle<CR>
" End Ranger configuration


" General Settings

if exists('g:vscode')
  " VS Code specific settings
endif

if !exists('g:vscode')
  " Non VSCode settings
  source $HOME/.config/nvim/general.vim
  source $HOME/.config/nvim/plug.vim
endif


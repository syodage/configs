
" General Settings

if exists('g:vscode')
  " VS Code extension
else

  " General settings
  source $HOME/.config/nvim/general.vim
  source $HOME/.config/nvim/plug.vim
endif

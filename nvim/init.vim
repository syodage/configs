
" General Settings

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode.vim
else

  " General settings
  source $HOME/.config/nvim/general.vim
  source $HOME/.config/nvim/plug.vim
endif

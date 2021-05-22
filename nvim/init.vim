
" General Settings

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode.vim
else
  " General settings
  source $HOME/.config/nvim/settings.vim
  source $HOME/.config/nvim/plug.vim
  source $HOME/.config/nvim/keymapping.vim
  source $HOME/.config/nvim/lsp_configs.vim
endif

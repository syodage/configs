"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VS Code specific settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Example key mapping
" nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>

" Bind C-/ to vscode commentary since calling from vscode produces double commments
xnoremap <silent> <C-/> :call Comment()<CR>
nnoremap <silent> <C-/> :call Comment()<CR>

" Which-key extension
nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End VS Code specific settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

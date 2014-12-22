" File: vim-unsurpriseme.vim
" Author: frace
" Url: https://github.com/frace/vim-unsurpriseme
" Description: Always show the SignsColumn

if exists('g:loaded_unsurpriseme')
    finish
endif

let s:plugin_name = 'vim-unsurpriseme'
let g:loaded_unsurpriseme = 1

if v:version < 703 || &compatible
    echom 'Plugin ' . s:plugin_name . ': ' . 'requires at least Vim 7.3 and :set nocompatible.'
elseif v:version >= 703 && !has('signs')
    echom 'Plugin ' . s:plugin_name . ': ' . 'Vim 7.3 requires the «signs» feature.'
endif

" Check user settings
if !exists('g:unsurpriseme_everywhere')
    let g:unsurpriseme_everywhere = 1
endif

" Check if a buffer is empty.
function! s:BufEmpty()
    return (line('$') == 1 && empty(getline(1))) ? 1 : 0
endfunction

" Check if a buffer is valid.
" A 'valid' buffer is shown in the bufferlist and returns no type.
function! s:BufValid()
    return (&buflisted && empty(&buftype)) ? 1 : 0
endfunction

" Enable the SignColumn
function! s:SignColumnAlways(buf_valid, buf_empty, everywhere)
    if a:everywhere || !a:buf_empty && a:buf_valid
        sign define dummy_sign
        execute 'sign place 9999 line=1 name=dummy_sign buffer=' . bufnr('')
    endif    

    return
endfunction

augroup SignColumnAlways
    autocmd!
    autocmd BufWinEnter * call s:SignColumnAlways(s:BufValid(),s:BufEmpty(),g:unsurpriseme_everywhere)
augroup END

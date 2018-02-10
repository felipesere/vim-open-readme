function! Maybe_open_README()
  if bufname('%') != ''
    return
  endif

  let maybe_file = expand(globpath('.', 'README*'))
  if filereadable(maybe_file)
    execute 'edit '. s:escape(maybe_file)
    execute 'set ft=markdown'
  endif
endfunction

autocmd VimEnter * :call Maybe_open_README()

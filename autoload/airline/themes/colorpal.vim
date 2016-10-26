if !exists('g:colorpal_airline')
  finish
endif


function! s:pal(fg, bg) abort
  let fg = colorpal#parse_name(a:fg, 'fg')
  let bg = colorpal#parse_name(a:bg, 'bg')
  return ['#'.fg[1], '#'.bg[1], fg[0], bg[0]]
endfunction


function! s:setup() abort
  let g:airline#themes#colorpal#palette = {}

  for k in keys(g:colorpal_airline)
    let fargs = map(copy(g:colorpal_airline[k]), 's:pal(v:val[0], v:val[1])')
    let g:airline#themes#colorpal#palette[k] = call('airline#themes#generate_color_map', fargs)
  endfor
endfunction

call s:setup()

delfunction s:setup
delfunction s:pal
unlet g:colorpal_airline

let s:airline_colors = {
      \ 'normal':   [['base01', 'base0B'], ['base06', 'base02'], ['base09', 'base01']],
      \ 'insert':   [['base01', 'base0D'], ['base06', 'base02'], ['base09', 'base01']],
      \ 'replace':  [['base01', 'base08'], ['base06', 'base02'], ['base09', 'base01']],
      \ 'visual':   [['base01', 'base0E'], ['base06', 'base02'], ['base09', 'base01']],
      \ 'inactive': [['base05', 'base01'], ['base05', 'base01'], ['base05', 'base01']],
      \ }


function! s:pal(fg, bg) abort
  let fgname = a:fg
  let bgname = a:bg

  if g:colors_name =~# 'light$'
    if fgname =~# '0[0-7]$'
      let fgname = printf('base%02d', abs(7 - matchstr(fgname, '\d$')))
    endif

    if bgname =~# '0[0-7]$'
      let bgname = printf('base%02d', abs(7 - matchstr(bgname, '\d$')))
    endif
  endif

  let fg = colorpal#parse_name(fgname)
  let bg = colorpal#parse_name(bgname)
  return ['#'.fg[1], '#'.bg[1], fg[0], bg[0]]
endfunction


function! s:setup() abort
  let g:airline#themes#base16#palette = {}

  for k in keys(s:airline_colors)
    let fargs = map(copy(s:airline_colors[k]), 's:pal(v:val[0], v:val[1])')
    let g:airline#themes#base16#palette[k] = call('airline#themes#generate_color_map', fargs)
  endfor
endfunction

call s:setup()

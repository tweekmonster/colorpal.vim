command! -bang -nargs=+ CPHL call colorpal#highlight(<bang>0, <f-args>)
command! -nargs=0 CPReset execute 'colorscheme' g:colors_name
command! -nargs=0 CPNegative call colorpal#negative()
command! -nargs=0 CPInvert call colorpal#invert()
command! -nargs=0 CPComplement call colorpal#complement()
command! -nargs=0 CPBrighter call colorpal#brighten()
command! -nargs=0 CPLighter call colorpal#lighten()
command! -nargs=0 CPDarker call colorpal#darken()

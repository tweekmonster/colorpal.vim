command! -bang -nargs=+ -complete=customlist,colorpal#cphl_compl CPHL call colorpal#highlight(<bang>0, <f-args>)
command! -count -nargs=0 CPReset call colorpal#reset()
command! -count -nargs=0 CPNegative call colorpal#negative()
command! -count -nargs=0 CPInvert call colorpal#invert()
command! -count -nargs=0 CPComplement call colorpal#complement()
command! -count -nargs=0 CPSaturate call colorpal#saturate(<count>)
command! -count -nargs=0 CPDesaturate call colorpal#desaturate(<count>)
command! -count -nargs=0 CPLighter call colorpal#lighten(<count>)
command! -count -nargs=0 CPDarker call colorpal#darken(<count>)
command! -count -nargs=0 CPBrighter call colorpal#brighten(<count>)
command! -count -nargs=0 CPDimmer call colorpal#dim(<count>)
command! -nargs=1 -complete=custom,colorpal#theme_compl CPTheme call colorpal#set_theme('<args>')

highlight default link CPHLCommand vimCommand
highlight default link CPHLGroup vimHiGroup
highlight default link CPHLBlank Special
highlight default link CPHLStyle Keyword
highlight default link CPHLMod Special
highlight default link CPHLVMod Special
highlight default link CPHLVModOp Operator
highlight default link CPHLNumber Number

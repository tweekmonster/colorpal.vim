if expand('%') =~# '\<colors/.*\.vim$'
  syntax keyword CPHLStyle bold underline undercurl reverse inverse italic standout none NONE

  syntax match CPHLMod '\<\%(li\%[ght]\|da\%[rk]\|br\%[ight]\|di\%[m]\|ne\%[gative]\|co\%[mplement]\)\>' contained
  syntax match CPHLNumber '\%(\d\+\)\?\.\?\d\+' contained
  syntax match CPHLVModOp '[+-]=\?' contained nextgroup=CPHLNumber
  syntax match CPHLVMod '\k[+-]=\?'he=s+1,me=s+1 contained nextgroup=CPHLVModOp
  syntax match CPHLColorMod #,# transparent contained nextgroup=CPHLMod,CPHLVMod

  syntax match CPHLBlank #\s-\_s#ms=s+1,me=e-1 contained
  syntax match CPHLGroup #\k\+# contained

  syntax match CPHLCommand #^CPHL\>#me=e+1 contained nextgroup=CPHLGroup
  syntax region CPHLLine start=#^CPHL# end=#$# oneline contains=CPHLCommand,CPHLBlank,CPHLStyle,CPHLColorMod
endif

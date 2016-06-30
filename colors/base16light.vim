call colorpal#begin()
set background=light
highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'base16light'

" Vim editor colors
CPHL Bold - - bold
CPHL Debug base08 - -
CPHL Directory base0D - -
CPHL Error base07 base08 -
CPHL ErrorMsg base08 base07 -
CPHL Exception base08 - -
CPHL FoldColumn base0C base06 -
CPHL Folded base04 base06 -
CPHL IncSearch base06 base09 none
CPHL Italic - - none
CPHL Macro base08 - -
CPHL MatchParen base07 base04 -
CPHL ModeMsg base0B - -
CPHL MoreMsg base0B - -
CPHL Question base0D - -
CPHL Search base04 base0A -
CPHL SpecialKey base04 - -
CPHL TooLong base08 - -
CPHL Underlined base08 - -
CPHL Visual - base05 -
CPHL VisualNOS base08 - -
CPHL WarningMsg base08 - -
CPHL WildMenu base08 base0A -
CPHL Title base0D - none
CPHL Conceal base0D base07 -
CPHL Cursor base07 base02 -
CPHL NonText base04 - -
CPHL Normal base02 base07 -
CPHL LineNr base04 base06 -
CPHL SignColumn base04 base06 -
CPHL StatusLine base03 base05 none
CPHL StatusLineNC base04 base06 none
CPHL VertSplit base05 base05 none
CPHL ColorColumn - base06 none
CPHL CursorColumn - base06 none
CPHL CursorLine - base06 none
CPHL CursorLineNr base04 base06 -
CPHL PMenu base03 base06 none
CPHL PMenuSel base06 base03 -
CPHL TabLine base04 base06 none
CPHL TabLineFill base04 base06 none
CPHL TabLineSel base0B base06 none

" Standard syntax highlighting
CPHL Boolean base09 - -
CPHL Character base08 - -
CPHL Comment base04 - -
CPHL Conditional base0E - -
CPHL Constant base09 - -
CPHL Define base0E - none
CPHL Delimiter base0F - -
CPHL Float base09 - -
CPHL Function base0D - -
CPHL Identifier base08 - none
CPHL Include base0D - -
CPHL Keyword base0E - -
CPHL Label base0A - -
CPHL Number base09 - -
CPHL Operator base02 - none
CPHL PreProc base0A - -
CPHL Repeat base0A - -
CPHL Special base0C - -
CPHL SpecialChar base0F - -
CPHL Statement base08 - -
CPHL StorageClass base0A - -
CPHL String base0B - -
CPHL Structure base0E - -
CPHL Tag base0A - -
CPHL Todo base0A base06 -
CPHL Type base0A - none
CPHL Typedef base0A - -

" C highlighting
CPHL cOperator base0C - -
CPHL cPreCondit base0E - -

" C# highlighting
CPHL csClass base0A - -
CPHL csAttribute base0A - -
CPHL csModifier base0E - -
CPHL csType base08 - -
CPHL csUnspecifiedStatement base0D - -
CPHL csContextualStatement base0E - -
CPHL csNewDecleration base08 - -

" CSS highlighting
CPHL cssBraces base02 - -
CPHL cssClassName base0E - -
CPHL cssColor base0C - -

" Diff highlighting
CPHL DiffAdd base0B base06 -
CPHL DiffChange base04 base06 -
CPHL DiffDelete base08 base06 -
CPHL DiffText base0D base06 -
CPHL DiffAdded base0B base07 -
CPHL DiffFile base08 base07 -
CPHL DiffNewFile base0B base07 -
CPHL DiffLine base0D base07 -
CPHL DiffRemoved base08 base07 -

" Git highlighting
CPHL gitCommitOverflow base08 - -
CPHL gitCommitSummary base0B - -

" GitGutter highlighting
CPHL GitGutterAdd base0B base06 -
CPHL GitGutterChange base0D base06 -
CPHL GitGutterDelete base08 base06 -
CPHL GitGutterChangeDelete base0E base06 -

" HTML highlighting
CPHL htmlBold base0A - -
CPHL htmlItalic base0E - -
CPHL htmlEndTag base02 - -
CPHL htmlTag base02 - -

" JavaScript highlighting
CPHL javaScript base02 - -
CPHL javaScriptBraces base02 - -
CPHL javaScriptNumber base09 - -

" Mail highlighting
CPHL mailQuoted1 base0A - -
CPHL mailQuoted2 base0B - -
CPHL mailQuoted3 base0E - -
CPHL mailQuoted4 base0C - -
CPHL mailQuoted5 base0D - -
CPHL mailQuoted6 base0A - -
CPHL mailURL base0D - -
CPHL mailEmail base0D - -

" Markdown highlighting
CPHL markdownCode base0B - -
CPHL markdownError base02 base07 -
CPHL markdownCodeBlock base0B - -
CPHL markdownHeadingDelimiter base0D - -

" NERDTree highlighting
CPHL NERDTreeDirSlash base0D - -
CPHL NERDTreeExecFile base02 - -

" PHP highlighting
CPHL phpMemberSelector base02 - -
CPHL phpComparison base02 - -
CPHL phpParent base02 - -

" Python highlighting
CPHL pythonOperator base0E - -
CPHL pythonRepeat base0E - -

" Ruby highlighting
CPHL rubyAttribute base0D - -
CPHL rubyConstant base0A - -
CPHL rubyInterpolation base0B - -
CPHL rubyInterpolationDelimiter base0F - -
CPHL rubyRegexp base0C - -
CPHL rubySymbol base0B - -
CPHL rubyStringDelimiter base0B - -

" SASS highlighting
CPHL sassidChar base08 - -
CPHL sassClassChar base09 - -
CPHL sassInclude base0E - -
CPHL sassMixing base0E - -
CPHL sassMixinName base0D - -

" Signify highlighting
CPHL SignifySignAdd base0B base06 -
CPHL SignifySignChange base0D base06 -
CPHL SignifySignDelete base08 base06 -

" Spelling highlighting
CPHL SpellBad - base07 undercurl
CPHL SpellLocal - base07 undercurl
CPHL SpellCap - base07 undercurl
CPHL SpellRare - base07 undercurl

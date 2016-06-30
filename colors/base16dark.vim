call colorpal#begin()
set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'base16dark'

" Vim editor colors
CPHL Bold - - bold
CPHL Debug base08 - -
CPHL Directory base0D - -
CPHL Error base00 base08 -
CPHL ErrorMsg base08 base00 -
CPHL Exception base08 - -
CPHL FoldColumn base0C base01 -
CPHL Folded base03 base01 -
CPHL IncSearch base01 base09 none
CPHL Italic - - none
CPHL Macro base08 - -
CPHL MatchParen base00 base03 -
CPHL ModeMsg base0B - -
CPHL MoreMsg base0B - -
CPHL Question base0D - -
CPHL Search base03 base0A -
CPHL SpecialKey base03 - -
CPHL TooLong base08 - -
CPHL Underlined base08 - -
CPHL Visual - base02 -
CPHL VisualNOS base08 - -
CPHL WarningMsg base08 - -
CPHL WildMenu base08 base0A -
CPHL Title base0D - none
CPHL Conceal base0D base00 -
CPHL Cursor base00 base05 -
CPHL NonText base03 - -
CPHL Normal base05 base00 -
CPHL LineNr base03 base01 -
CPHL SignColumn base03 base01 -
CPHL StatusLine base04 base02 none
CPHL StatusLineNC base03 base01 none
CPHL VertSplit base02 base02 none
CPHL ColorColumn - base01 none
CPHL CursorColumn - base01 none
CPHL CursorLine - base01 none
CPHL CursorLineNr base03 base01 -
CPHL PMenu base04 base01 none
CPHL PMenuSel base01 base04 -
CPHL TabLine base03 base01 none
CPHL TabLineFill base03 base01 none
CPHL TabLineSel base0B base01 none

" Standard syntax highlighting
CPHL Boolean base09 - -
CPHL Character base08 - -
CPHL Comment base03 - -
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
CPHL Operator base05 - none
CPHL PreProc base0A - -
CPHL Repeat base0A - -
CPHL Special base0C - -
CPHL SpecialChar base0F - -
CPHL Statement base08 - -
CPHL StorageClass base0A - -
CPHL String base0B - -
CPHL Structure base0E - -
CPHL Tag base0A - -
CPHL Todo base0A base01 -
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
CPHL cssBraces base05 - -
CPHL cssClassName base0E - -
CPHL cssColor base0C - -

" Diff highlighting
CPHL DiffAdd base0B base01 -
CPHL DiffChange base03 base01 -
CPHL DiffDelete base08 base01 -
CPHL DiffText base0D base01 -
CPHL DiffAdded base0B base00 -
CPHL DiffFile base08 base00 -
CPHL DiffNewFile base0B base00 -
CPHL DiffLine base0D base00 -
CPHL DiffRemoved base08 base00 -

" Git highlighting
CPHL gitCommitOverflow base08 - -
CPHL gitCommitSummary base0B - -

" GitGutter highlighting
CPHL GitGutterAdd base0B base01 -
CPHL GitGutterChange base0D base01 -
CPHL GitGutterDelete base08 base01 -
CPHL GitGutterChangeDelete base0E base01 -

" HTML highlighting
CPHL htmlBold base0A - -
CPHL htmlItalic base0E - -
CPHL htmlEndTag base05 - -
CPHL htmlTag base05 - -

" JavaScript highlighting
CPHL javaScript base05 - -
CPHL javaScriptBraces base05 - -
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
CPHL markdownError base05 base00 -
CPHL markdownCodeBlock base0B - -
CPHL markdownHeadingDelimiter base0D - -

" NERDTree highlighting
CPHL NERDTreeDirSlash base0D - -
CPHL NERDTreeExecFile base05 - -

" PHP highlighting
CPHL phpMemberSelector base05 - -
CPHL phpComparison base05 - -
CPHL phpParent base05 - -

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
CPHL SignifySignAdd base0B base01 -
CPHL SignifySignChange base0D base01 -
CPHL SignifySignDelete base08 base01 -

" Spelling highlighting
CPHL SpellBad - base00 undercurl
CPHL SpellLocal - base00 undercurl
CPHL SpellCap - base00 undercurl
CPHL SpellRare - base00 undercurl

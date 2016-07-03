# colorpal.vim

With `colorpal`, you can define an RGB palette to use in the creation of Vim
color schemes.  The equivalent terminal colors are automatically set.  It also
comes with commands that lets you temporarily adjust the color scheme.


## Rationale

[Neovim][neovim] and [various terminal emulators][terms] have supported 24 bit
color for a while now.  Being able to highlight text in more than 240 colors
has its advantages and just looks nicer.  But, it's tedious to make adjustments
to both `cterm` and `gui` colors.

I work in the terminal and have a bad habit of only setting `cterm` colors in
my color scheme.  As a result, colors look bad when I need to use a GUI version
of Vim.  I imagine the problem is the same for those who primarily use GUI Vim.


## Installation

Any plugin manager will work.


## Commands

| Command         | Description                                                |
| --------------: | ---------------------------------------------------------- |
| CPSaturate      | Saturate all colors                                        |
| CPDesaturate    | Desaturate all colors                                      |
| CPLighter       | Ligthen all colors                                         |
| CPDarker        | Darken all colors                                          |
| CPBrighter      | Brighten all colors                                        |
| CPDimmer        | Dim all colors                                             |
| CPNegative      | Negative colors (inverted hue)                             |
| CPInvert        | Invert colors (inverted hue, saturation, and lightness)    |
| CPReset         | Reset color scheme to original colors                      |
| CPHL            | Command to use the user-defined palette in color schemes   |


## Usage

**Note**: If you only want the color adjustment commands, you don't need to
create a palette and color scheme using this pluign.

Start by creating a palette:

```vim
let g:colorpal_palette = {
      \ 'red': 'ff0000',
      \ 'green': '00ff00',
      \ ...etc...
      \ 'blue': '0000ff',
      \ 'emo': '000000',
      \ }
```

The color names can be anything, but they can't have spaces or commas.  Then
create your own color scheme.  For example:


```vim
" Example File: colors/mytheme.vim

call colorpal#begin()
highlight clear
if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'mytheme'

CPHL Normal green emo
...etc...
CPHL ErrorMsg red - bold
CPHL WarningMsg red,s-=0.4 - bold
```

Then you would set `colorscheme` to `mytheme`

The `CPHL` command takes up to 4 arguments separated by spaces: `group`
(required), `fg`, `bg`, and `style`.  A dash (`-`) denotes that the field
will *not* be set.

The `fg` and `bg` fields require the names that are defined in your palette.
They take optional adjustments, such as `s-=0.4` above which decreases the
`saturation` by 40% of the current saturation value.  The adjustments operate
on [HSL][] values.  `h+=40` rotates the Hue by 30 degrees, `s+=40` increases
saturation by 40%, and `l+=40` increases lightness by 40%.

For `saturation` and `lightness`, integer values are divided by 100.  Float
values are taken as-is.  `s-=0.4` and `s-=40` mean the same thing.

For `hue`, the value is taken as-is.  `h-=0.4` rotates the hue by -0.4 degrees
and `h-=40` rotates the hue by -40 degrees.

The operators `+=` and `-=` adjusts the current value.  The operators `+` and
`-` (without `=`) adds or subtracts the amount to the current value.

Given that `s=0.5`:

* `s-=0.4` is expressed as `0.5 - (0.5 * 0.4)`, which equals `0.2`
* `s-0.4` is expressed as `0.5 - 0.4`, which equals `0.1`

There are named adjustments: `li[ght]`, `da[rk]`, `br[ight]`, `di[m]`,
`ne[gative]`, `co[mplement]`.  The adjustments `light`, `dark`, `bright`, and
`dim` will adjust values by `0.1`.  `negative` gives the opposite RGB color,
and `complement` gives the opposite RYB color.

Adjustments can be chained.  For example, to get a bright green color:

```vim
CPHL WarningMsg red,complement,s+=10 - bold
" Could be shortened to:
CPHL WarningMsg red,co,s+=10 - bold
```

## base16

Todo: write this


[neovim]: https://neovim.io/
[terms]: https://gist.github.com/XVilka/8346728
[HSL]: https://en.wikipedia.org/wiki/HSL_and_HSV

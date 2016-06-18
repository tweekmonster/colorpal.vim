let s:plugin_base = expand('<sfile>:p:h:h')
let s:default_palette = {
      \   'black':  '000000',
      \   'white':  'ffffff',
      \   'gray0':  '1d1f21',
      \   'gray1':  '282a2e',
      \   'gray2':  '373b41',
      \   'gray3':  '969896',
      \   'gray4':  'b4b7b4',
      \   'gray5':  'c5c8c6',
      \   'gray6':  'e0e0e0',
      \   'gray7':  'ffffff',
      \   'red':    'cc6666',
      \   'orange': 'de935f',
      \   'yellow': 'f0c674',
      \   'green':  'b5bd68',
      \   'cyan':   '8abeb7',
      \   'blue':   '81a2be',
      \   'violet': 'b294bb',
      \   'brown':  'a3685a',
      \ }

let s:colors_8 = [
      \   [0x00, 0x00, 0x00],
      \   [0xbb, 0x00, 0x00],
      \   [0x00, 0xbb, 0x00],
      \   [0xbb, 0xbb, 0x00],
      \   [0x00, 0x00, 0xbb],
      \   [0xbb, 0x00, 0xbb],
      \   [0x00, 0xbb, 0xbb],
      \   [0xbb, 0xbb, 0xbb],
      \ ]

let s:color_names = {
      \ 'alice blue': 'f0f8ff', 'aliceblue': 'f0f8ff', 'antique white': 'faebd7',
      \ 'antiquewhite': 'faebd7', 'antiquewhite1': 'ffefdb', 'antiquewhite2': 'eedfcc',
      \ 'antiquewhite3': 'cdc0b0', 'antiquewhite4': '8b8378', 'aquamarine': '7fffd4',
      \ 'aquamarine1': '7fffd4', 'aquamarine2': '76eec6', 'aquamarine3': '66cdaa',
      \ 'aquamarine4': '458b74', 'azure': 'f0ffff', 'azure1': 'f0ffff',
      \ 'azure2': 'e0eeee', 'azure3': 'c1cdcd', 'azure4': '838b8b',
      \ 'beige': 'f5f5dc', 'bisque': 'ffe4c4', 'bisque1': 'ffe4c4',
      \ 'bisque2': 'eed5b7', 'bisque3': 'cdb79e', 'bisque4': '8b7d6b',
      \ 'black': '000000', 'blanched almond': 'ffebcd', 'blanchedalmond': 'ffebcd',
      \ 'blue violet': '8a2be2', 'blue': '0000ff', 'blue1': '0000ff',
      \ 'blue2': '0000ee', 'blue3': '0000cd', 'blue4': '00008b',
      \ 'blueviolet': '8a2be2', 'brown': 'a52a2a', 'brown1': 'ff4040',
      \ 'brown2': 'ee3b3b', 'brown3': 'cd3333', 'brown4': '8b2323',
      \ 'burlywood': 'deb887', 'burlywood1': 'ffd39b', 'burlywood2': 'eec591',
      \ 'burlywood3': 'cdaa7d', 'burlywood4': '8b7355', 'cadet blue': '5f9ea0',
      \ 'cadetblue': '5f9ea0', 'cadetblue1': '98f5ff', 'cadetblue2': '8ee5ee',
      \ 'cadetblue3': '7ac5cd', 'cadetblue4': '53868b', 'chartreuse': '7fff00',
      \ 'chartreuse1': '7fff00', 'chartreuse2': '76ee00', 'chartreuse3': '66cd00',
      \ 'chartreuse4': '458b00', 'chocolate': 'd2691e', 'chocolate1': 'ff7f24',
      \ 'chocolate2': 'ee7621', 'chocolate3': 'cd661d', 'chocolate4': '8b4513',
      \ 'coral': 'ff7f50', 'coral1': 'ff7256', 'coral2': 'ee6a50',
      \ 'coral3': 'cd5b45', 'coral4': '8b3e2f', 'cornflower blue': '6495ed',
      \ 'cornflowerblue': '6495ed', 'cornsilk': 'fff8dc', 'cornsilk1': 'fff8dc',
      \ 'cornsilk2': 'eee8cd', 'cornsilk3': 'cdc8b1', 'cornsilk4': '8b8878',
      \ 'cyan': '00ffff', 'cyan1': '00ffff', 'cyan2': '00eeee',
      \ 'cyan3': '00cdcd', 'cyan4': '008b8b', 'dark blue': '00008b',
      \ 'dark cyan': '008b8b', 'dark goldenrod': 'b8860b', 'dark gray': 'a9a9a9',
      \ 'dark green': '006400', 'dark grey': 'a9a9a9', 'dark khaki': 'bdb76b',
      \ 'dark magenta': '8b008b', 'dark olive green': '556b2f', 'dark orange': 'ff8c00',
      \ 'dark orchid': '9932cc', 'dark red': '8b0000', 'dark salmon': 'e9967a',
      \ 'dark sea green': '8fbc8f', 'dark slate blue': '483d8b', 'dark slate gray': '2f4f4f',
      \ 'dark slate grey': '2f4f4f', 'dark turquoise': '00ced1', 'dark violet': '9400d3',
      \ 'darkblue': '00008b', 'darkcyan': '008b8b', 'darkgoldenrod': 'b8860b',
      \ 'darkgoldenrod1': 'ffb90f', 'darkgoldenrod2': 'eead0e', 'darkgoldenrod3': 'cd950c',
      \ 'darkgoldenrod4': '8b6508', 'darkgray': 'a9a9a9', 'darkgreen': '006400',
      \ 'darkgrey': 'a9a9a9', 'darkkhaki': 'bdb76b', 'darkmagenta': '8b008b',
      \ 'darkolivegreen': '556b2f', 'darkolivegreen1': 'caff70', 'darkolivegreen2': 'bcee68',
      \ 'darkolivegreen3': 'a2cd5a', 'darkolivegreen4': '6e8b3d', 'darkorange': 'ff8c00',
      \ 'darkorange1': 'ff7f00', 'darkorange2': 'ee7600', 'darkorange3': 'cd6600',
      \ 'darkorange4': '8b4500', 'darkorchid': '9932cc', 'darkorchid1': 'bf3eff',
      \ 'darkorchid2': 'b23aee', 'darkorchid3': '9a32cd', 'darkorchid4': '68228b',
      \ 'darkred': '8b0000', 'darksalmon': 'e9967a', 'darkseagreen': '8fbc8f',
      \ 'darkseagreen1': 'c1ffc1', 'darkseagreen2': 'b4eeb4', 'darkseagreen3': '9bcd9b',
      \ 'darkseagreen4': '698b69', 'darkslateblue': '483d8b', 'darkslategray': '2f4f4f',
      \ 'darkslategray1': '97ffff', 'darkslategray2': '8deeee', 'darkslategray3': '79cdcd',
      \ 'darkslategray4': '528b8b', 'darkslategrey': '2f4f4f', 'darkturquoise': '00ced1',
      \ 'darkviolet': '9400d3', 'deep pink': 'ff1493', 'deep sky blue': '00bfff',
      \ 'deeppink': 'ff1493', 'deeppink1': 'ff1493', 'deeppink2': 'ee1289',
      \ 'deeppink3': 'cd1076', 'deeppink4': '8b0a50', 'deepskyblue': '00bfff',
      \ 'deepskyblue1': '00bfff', 'deepskyblue2': '00b2ee', 'deepskyblue3': '009acd',
      \ 'deepskyblue4': '00688b', 'dim gray': '696969', 'dim grey': '696969',
      \ 'dimgray': '696969', 'dimgrey': '696969', 'dodger blue': '1e90ff',
      \ 'dodgerblue': '1e90ff', 'dodgerblue1': '1e90ff', 'dodgerblue2': '1c86ee',
      \ 'dodgerblue3': '1874cd', 'dodgerblue4': '104e8b', 'firebrick': 'b22222',
      \ 'firebrick1': 'ff3030', 'firebrick2': 'ee2c2c', 'firebrick3': 'cd2626',
      \ 'firebrick4': '8b1a1a', 'floral white': 'fffaf0', 'floralwhite': 'fffaf0',
      \ 'forest green': '228b22', 'forestgreen': '228b22', 'gainsboro': 'dcdcdc',
      \ 'ghost white': 'f8f8ff', 'ghostwhite': 'f8f8ff', 'gold': 'ffd700',
      \ 'gold1': 'ffd700', 'gold2': 'eec900', 'gold3': 'cdad00',
      \ 'gold4': '8b7500', 'goldenrod': 'daa520', 'goldenrod1': 'ffc125',
      \ 'goldenrod2': 'eeb422', 'goldenrod3': 'cd9b1d', 'goldenrod4': '8b6914',
      \ 'gray': 'bebebe', 'gray0': '000000', 'gray1': '030303',
      \ 'gray10': '1a1a1a', 'gray100': 'ffffff', 'gray11': '1c1c1c',
      \ 'gray12': '1f1f1f', 'gray13': '212121', 'gray14': '242424',
      \ 'gray15': '262626', 'gray16': '292929', 'gray17': '2b2b2b',
      \ 'gray18': '2e2e2e', 'gray19': '303030', 'gray2': '050505',
      \ 'gray20': '333333', 'gray21': '363636', 'gray22': '383838',
      \ 'gray23': '3b3b3b', 'gray24': '3d3d3d', 'gray25': '404040',
      \ 'gray26': '424242', 'gray27': '454545', 'gray28': '474747',
      \ 'gray29': '4a4a4a', 'gray3': '080808', 'gray30': '4d4d4d',
      \ 'gray31': '4f4f4f', 'gray32': '525252', 'gray33': '545454',
      \ 'gray34': '575757', 'gray35': '595959', 'gray36': '5c5c5c',
      \ 'gray37': '5e5e5e', 'gray38': '616161', 'gray39': '636363',
      \ 'gray4': '0a0a0a', 'gray40': '666666', 'gray41': '696969',
      \ 'gray42': '6b6b6b', 'gray43': '6e6e6e', 'gray44': '707070',
      \ 'gray45': '737373', 'gray46': '757575', 'gray47': '787878',
      \ 'gray48': '7a7a7a', 'gray49': '7d7d7d', 'gray5': '0d0d0d',
      \ 'gray50': '7f7f7f', 'gray51': '828282', 'gray52': '858585',
      \ 'gray53': '878787', 'gray54': '8a8a8a', 'gray55': '8c8c8c',
      \ 'gray56': '8f8f8f', 'gray57': '919191', 'gray58': '949494',
      \ 'gray59': '969696', 'gray6': '0f0f0f', 'gray60': '999999',
      \ 'gray61': '9c9c9c', 'gray62': '9e9e9e', 'gray63': 'a1a1a1',
      \ 'gray64': 'a3a3a3', 'gray65': 'a6a6a6', 'gray66': 'a8a8a8',
      \ 'gray67': 'ababab', 'gray68': 'adadad', 'gray69': 'b0b0b0',
      \ 'gray7': '121212', 'gray70': 'b3b3b3', 'gray71': 'b5b5b5',
      \ 'gray72': 'b8b8b8', 'gray73': 'bababa', 'gray74': 'bdbdbd',
      \ 'gray75': 'bfbfbf', 'gray76': 'c2c2c2', 'gray77': 'c4c4c4',
      \ 'gray78': 'c7c7c7', 'gray79': 'c9c9c9', 'gray8': '141414',
      \ 'gray80': 'cccccc', 'gray81': 'cfcfcf', 'gray82': 'd1d1d1',
      \ 'gray83': 'd4d4d4', 'gray84': 'd6d6d6', 'gray85': 'd9d9d9',
      \ 'gray86': 'dbdbdb', 'gray87': 'dedede', 'gray88': 'e0e0e0',
      \ 'gray89': 'e3e3e3', 'gray9': '171717', 'gray90': 'e5e5e5',
      \ 'gray91': 'e8e8e8', 'gray92': 'ebebeb', 'gray93': 'ededed',
      \ 'gray94': 'f0f0f0', 'gray95': 'f2f2f2', 'gray96': 'f5f5f5',
      \ 'gray97': 'f7f7f7', 'gray98': 'fafafa', 'gray99': 'fcfcfc',
      \ 'green yellow': 'adff2f', 'green': '00ff00', 'green1': '00ff00',
      \ 'green2': '00ee00', 'green3': '00cd00', 'green4': '008b00',
      \ 'greenyellow': 'adff2f', 'grey': 'bebebe', 'grey0': '000000',
      \ 'grey1': '030303', 'grey10': '1a1a1a', 'grey100': 'ffffff',
      \ 'grey11': '1c1c1c', 'grey12': '1f1f1f', 'grey13': '212121',
      \ 'grey14': '242424', 'grey15': '262626', 'grey16': '292929',
      \ 'grey17': '2b2b2b', 'grey18': '2e2e2e', 'grey19': '303030',
      \ 'grey2': '050505', 'grey20': '333333', 'grey21': '363636',
      \ 'grey22': '383838', 'grey23': '3b3b3b', 'grey24': '3d3d3d',
      \ 'grey25': '404040', 'grey26': '424242', 'grey27': '454545',
      \ 'grey28': '474747', 'grey29': '4a4a4a', 'grey3': '080808',
      \ 'grey30': '4d4d4d', 'grey31': '4f4f4f', 'grey32': '525252',
      \ 'grey33': '545454', 'grey34': '575757', 'grey35': '595959',
      \ 'grey36': '5c5c5c', 'grey37': '5e5e5e', 'grey38': '616161',
      \ 'grey39': '636363', 'grey4': '0a0a0a', 'grey40': '666666',
      \ 'grey41': '696969', 'grey42': '6b6b6b', 'grey43': '6e6e6e',
      \ 'grey44': '707070', 'grey45': '737373', 'grey46': '757575',
      \ 'grey47': '787878', 'grey48': '7a7a7a', 'grey49': '7d7d7d',
      \ 'grey5': '0d0d0d', 'grey50': '7f7f7f', 'grey51': '828282',
      \ 'grey52': '858585', 'grey53': '878787', 'grey54': '8a8a8a',
      \ 'grey55': '8c8c8c', 'grey56': '8f8f8f', 'grey57': '919191',
      \ 'grey58': '949494', 'grey59': '969696', 'grey6': '0f0f0f',
      \ 'grey60': '999999', 'grey61': '9c9c9c', 'grey62': '9e9e9e',
      \ 'grey63': 'a1a1a1', 'grey64': 'a3a3a3', 'grey65': 'a6a6a6',
      \ 'grey66': 'a8a8a8', 'grey67': 'ababab', 'grey68': 'adadad',
      \ 'grey69': 'b0b0b0', 'grey7': '121212', 'grey70': 'b3b3b3',
      \ 'grey71': 'b5b5b5', 'grey72': 'b8b8b8', 'grey73': 'bababa',
      \ 'grey74': 'bdbdbd', 'grey75': 'bfbfbf', 'grey76': 'c2c2c2',
      \ 'grey77': 'c4c4c4', 'grey78': 'c7c7c7', 'grey79': 'c9c9c9',
      \ 'grey8': '141414', 'grey80': 'cccccc', 'grey81': 'cfcfcf',
      \ 'grey82': 'd1d1d1', 'grey83': 'd4d4d4', 'grey84': 'd6d6d6',
      \ 'grey85': 'd9d9d9', 'grey86': 'dbdbdb', 'grey87': 'dedede',
      \ 'grey88': 'e0e0e0', 'grey89': 'e3e3e3', 'grey9': '171717',
      \ 'grey90': 'e5e5e5', 'grey91': 'e8e8e8', 'grey92': 'ebebeb',
      \ 'grey93': 'ededed', 'grey94': 'f0f0f0', 'grey95': 'f2f2f2',
      \ 'grey96': 'f5f5f5', 'grey97': 'f7f7f7', 'grey98': 'fafafa',
      \ 'grey99': 'fcfcfc', 'honeydew': 'f0fff0', 'honeydew1': 'f0fff0',
      \ 'honeydew2': 'e0eee0', 'honeydew3': 'c1cdc1', 'honeydew4': '838b83',
      \ 'hot pink': 'ff69b4', 'hotpink': 'ff69b4', 'hotpink1': 'ff6eb4',
      \ 'hotpink2': 'ee6aa7', 'hotpink3': 'cd6090', 'hotpink4': '8b3a62',
      \ 'indian red': 'cd5c5c', 'indianred': 'cd5c5c', 'indianred1': 'ff6a6a',
      \ 'indianred2': 'ee6363', 'indianred3': 'cd5555', 'indianred4': '8b3a3a',
      \ 'ivory': 'fffff0', 'ivory1': 'fffff0', 'ivory2': 'eeeee0',
      \ 'ivory3': 'cdcdc1', 'ivory4': '8b8b83', 'khaki': 'f0e68c',
      \ 'khaki1': 'fff68f', 'khaki2': 'eee685', 'khaki3': 'cdc673',
      \ 'khaki4': '8b864e', 'lavender blush': 'fff0f5', 'lavender': 'e6e6fa',
      \ 'lavenderblush': 'fff0f5', 'lavenderblush1': 'fff0f5', 'lavenderblush2': 'eee0e5',
      \ 'lavenderblush3': 'cdc1c5', 'lavenderblush4': '8b8386', 'lawn green': '7cfc00',
      \ 'lawngreen': '7cfc00', 'lemon chiffon': 'fffacd', 'lemonchiffon': 'fffacd',
      \ 'lemonchiffon1': 'fffacd', 'lemonchiffon2': 'eee9bf', 'lemonchiffon3': 'cdc9a5',
      \ 'lemonchiffon4': '8b8970', 'light blue': 'add8e6', 'light coral': 'f08080',
      \ 'light cyan': 'e0ffff', 'light goldenrod yellow': 'fafad2', 'light goldenrod': 'eedd82',
      \ 'light gray': 'd3d3d3', 'light green': '90ee90', 'light grey': 'd3d3d3',
      \ 'light pink': 'ffb6c1', 'light salmon': 'ffa07a', 'light sea green': '20b2aa',
      \ 'light sky blue': '87cefa', 'light slate blue': '8470ff', 'light slate gray': '778899',
      \ 'light slate grey': '778899', 'light steel blue': 'b0c4de', 'light yellow': 'ffffe0',
      \ 'lightblue': 'add8e6', 'lightblue1': 'bfefff', 'lightblue2': 'b2dfee',
      \ 'lightblue3': '9ac0cd', 'lightblue4': '68838b', 'lightcoral': 'f08080',
      \ 'lightcyan': 'e0ffff', 'lightcyan1': 'e0ffff', 'lightcyan2': 'd1eeee',
      \ 'lightcyan3': 'b4cdcd', 'lightcyan4': '7a8b8b', 'lightgoldenrod': 'eedd82',
      \ 'lightgoldenrod1': 'ffec8b', 'lightgoldenrod2': 'eedc82', 'lightgoldenrod3': 'cdbe70',
      \ 'lightgoldenrod4': '8b814c', 'lightgoldenrodyellow': 'fafad2', 'lightgray': 'd3d3d3',
      \ 'lightgreen': '90ee90', 'lightgrey': 'd3d3d3', 'lightpink': 'ffb6c1',
      \ 'lightpink1': 'ffaeb9', 'lightpink2': 'eea2ad', 'lightpink3': 'cd8c95',
      \ 'lightpink4': '8b5f65', 'lightsalmon': 'ffa07a', 'lightsalmon1': 'ffa07a',
      \ 'lightsalmon2': 'ee9572', 'lightsalmon3': 'cd8162', 'lightsalmon4': '8b5742',
      \ 'lightseagreen': '20b2aa', 'lightskyblue': '87cefa', 'lightskyblue1': 'b0e2ff',
      \ 'lightskyblue2': 'a4d3ee', 'lightskyblue3': '8db6cd', 'lightskyblue4': '607b8b',
      \ 'lightslateblue': '8470ff', 'lightslategray': '778899', 'lightslategrey': '778899',
      \ 'lightsteelblue': 'b0c4de', 'lightsteelblue1': 'cae1ff', 'lightsteelblue2': 'bcd2ee',
      \ 'lightsteelblue3': 'a2b5cd', 'lightsteelblue4': '6e7b8b', 'lightyellow': 'ffffe0',
      \ 'lightyellow1': 'ffffe0', 'lightyellow2': 'eeeed1', 'lightyellow3': 'cdcdb4',
      \ 'lightyellow4': '8b8b7a', 'lime green': '32cd32', 'limegreen': '32cd32',
      \ 'linen': 'faf0e6', 'magenta': 'ff00ff', 'magenta1': 'ff00ff',
      \ 'magenta2': 'ee00ee', 'magenta3': 'cd00cd', 'magenta4': '8b008b',
      \ 'maroon': 'b03060', 'maroon1': 'ff34b3', 'maroon2': 'ee30a7',
      \ 'maroon3': 'cd2990', 'maroon4': '8b1c62', 'medium aquamarine': '66cdaa',
      \ 'medium blue': '0000cd', 'medium orchid': 'ba55d3', 'medium purple': '9370db',
      \ 'medium sea green': '3cb371', 'medium slate blue': '7b68ee', 'medium spring green': '00fa9a',
      \ 'medium turquoise': '48d1cc', 'medium violet red': 'c71585', 'mediumaquamarine': '66cdaa',
      \ 'mediumblue': '0000cd', 'mediumorchid': 'ba55d3', 'mediumorchid1': 'e066ff',
      \ 'mediumorchid2': 'd15fee', 'mediumorchid3': 'b452cd', 'mediumorchid4': '7a378b',
      \ 'mediumpurple': '9370db', 'mediumpurple1': 'ab82ff', 'mediumpurple2': '9f79ee',
      \ 'mediumpurple3': '8968cd', 'mediumpurple4': '5d478b', 'mediumseagreen': '3cb371',
      \ 'mediumslateblue': '7b68ee', 'mediumspringgreen': '00fa9a', 'mediumturquoise': '48d1cc',
      \ 'mediumvioletred': 'c71585', 'midnight blue': '191970', 'midnightblue': '191970',
      \ 'mint cream': 'f5fffa', 'mintcream': 'f5fffa', 'misty rose': 'ffe4e1',
      \ 'mistyrose': 'ffe4e1', 'mistyrose1': 'ffe4e1', 'mistyrose2': 'eed5d2',
      \ 'mistyrose3': 'cdb7b5', 'mistyrose4': '8b7d7b', 'moccasin': 'ffe4b5',
      \ 'navajo white': 'ffdead', 'navajowhite': 'ffdead', 'navajowhite1': 'ffdead',
      \ 'navajowhite2': 'eecfa1', 'navajowhite3': 'cdb38b', 'navajowhite4': '8b795e',
      \ 'navy blue': '000080', 'navy': '000080', 'navyblue': '000080',
      \ 'old lace': 'fdf5e6', 'oldlace': 'fdf5e6', 'olive drab': '6b8e23',
      \ 'olivedrab': '6b8e23', 'olivedrab1': 'c0ff3e', 'olivedrab2': 'b3ee3a',
      \ 'olivedrab3': '9acd32', 'olivedrab4': '698b22', 'orange red': 'ff4500',
      \ 'orange': 'ffa500', 'orange1': 'ffa500', 'orange2': 'ee9a00',
      \ 'orange3': 'cd8500', 'orange4': '8b5a00', 'orangered': 'ff4500',
      \ 'orangered1': 'ff4500', 'orangered2': 'ee4000', 'orangered3': 'cd3700',
      \ 'orangered4': '8b2500', 'orchid': 'da70d6', 'orchid1': 'ff83fa',
      \ 'orchid2': 'ee7ae9', 'orchid3': 'cd69c9', 'orchid4': '8b4789',
      \ 'pale goldenrod': 'eee8aa', 'pale green': '98fb98', 'pale turquoise': 'afeeee',
      \ 'pale violet red': 'db7093', 'palegoldenrod': 'eee8aa', 'palegreen': '98fb98',
      \ 'palegreen1': '9aff9a', 'palegreen2': '90ee90', 'palegreen3': '7ccd7c',
      \ 'palegreen4': '548b54', 'paleturquoise': 'afeeee', 'paleturquoise1': 'bbffff',
      \ 'paleturquoise2': 'aeeeee', 'paleturquoise3': '96cdcd', 'paleturquoise4': '668b8b',
      \ 'palevioletred': 'db7093', 'palevioletred1': 'ff82ab', 'palevioletred2': 'ee799f',
      \ 'palevioletred3': 'cd6889', 'palevioletred4': '8b475d', 'papaya whip': 'ffefd5',
      \ 'papayawhip': 'ffefd5', 'peach puff': 'ffdab9', 'peachpuff': 'ffdab9',
      \ 'peachpuff1': 'ffdab9', 'peachpuff2': 'eecbad', 'peachpuff3': 'cdaf95',
      \ 'peachpuff4': '8b7765', 'peru': 'cd853f', 'pink': 'ffc0cb',
      \ 'pink1': 'ffb5c5', 'pink2': 'eea9b8', 'pink3': 'cd919e',
      \ 'pink4': '8b636c', 'plum': 'dda0dd', 'plum1': 'ffbbff',
      \ 'plum2': 'eeaeee', 'plum3': 'cd96cd', 'plum4': '8b668b',
      \ 'powder blue': 'b0e0e6', 'powderblue': 'b0e0e6', 'purple': 'a020f0',
      \ 'purple1': '9b30ff', 'purple2': '912cee', 'purple3': '7d26cd',
      \ 'purple4': '551a8b', 'red': 'ff0000', 'red1': 'ff0000',
      \ 'red2': 'ee0000', 'red3': 'cd0000', 'red4': '8b0000',
      \ 'rosy brown': 'bc8f8f', 'rosybrown': 'bc8f8f', 'rosybrown1': 'ffc1c1',
      \ 'rosybrown2': 'eeb4b4', 'rosybrown3': 'cd9b9b', 'rosybrown4': '8b6969',
      \ 'royal blue': '4169e1', 'royalblue': '4169e1', 'royalblue1': '4876ff',
      \ 'royalblue2': '436eee', 'royalblue3': '3a5fcd', 'royalblue4': '27408b',
      \ 'saddle brown': '8b4513', 'saddlebrown': '8b4513', 'salmon': 'fa8072',
      \ 'salmon1': 'ff8c69', 'salmon2': 'ee8262', 'salmon3': 'cd7054',
      \ 'salmon4': '8b4c39', 'sandy brown': 'f4a460', 'sandybrown': 'f4a460',
      \ 'sea green': '2e8b57', 'seagreen': '2e8b57', 'seagreen1': '54ff9f',
      \ 'seagreen2': '4eee94', 'seagreen3': '43cd80', 'seagreen4': '2e8b57',
      \ 'seashell': 'fff5ee', 'seashell1': 'fff5ee', 'seashell2': 'eee5de',
      \ 'seashell3': 'cdc5bf', 'seashell4': '8b8682', 'sienna': 'a0522d',
      \ 'sienna1': 'ff8247', 'sienna2': 'ee7942', 'sienna3': 'cd6839',
      \ 'sienna4': '8b4726', 'sky blue': '87ceeb', 'skyblue': '87ceeb',
      \ 'skyblue1': '87ceff', 'skyblue2': '7ec0ee', 'skyblue3': '6ca6cd',
      \ 'skyblue4': '4a708b', 'slate blue': '6a5acd', 'slate gray': '708090',
      \ 'slate grey': '708090', 'slateblue': '6a5acd', 'slateblue1': '836fff',
      \ 'slateblue2': '7a67ee', 'slateblue3': '6959cd', 'slateblue4': '473c8b',
      \ 'slategray': '708090', 'slategray1': 'c6e2ff', 'slategray2': 'b9d3ee',
      \ 'slategray3': '9fb6cd', 'slategray4': '6c7b8b', 'slategrey': '708090',
      \ 'snow': 'fffafa', 'snow1': 'fffafa', 'snow2': 'eee9e9',
      \ 'snow3': 'cdc9c9', 'snow4': '8b8989', 'spring green': '00ff7f',
      \ 'springgreen': '00ff7f', 'springgreen1': '00ff7f', 'springgreen2': '00ee76',
      \ 'springgreen3': '00cd66', 'springgreen4': '008b45', 'steel blue': '4682b4',
      \ 'steelblue': '4682b4', 'steelblue1': '63b8ff', 'steelblue2': '5cacee',
      \ 'steelblue3': '4f94cd', 'steelblue4': '36648b', 'tan': 'd2b48c',
      \ 'tan1': 'ffa54f', 'tan2': 'ee9a49', 'tan3': 'cd853f',
      \ 'tan4': '8b5a2b', 'thistle': 'd8bfd8', 'thistle1': 'ffe1ff',
      \ 'thistle2': 'eed2ee', 'thistle3': 'cdb5cd', 'thistle4': '8b7b8b',
      \ 'tomato': 'ff6347', 'tomato1': 'ff6347', 'tomato2': 'ee5c42',
      \ 'tomato3': 'cd4f39', 'tomato4': '8b3626', 'turquoise': '40e0d0',
      \ 'turquoise1': '00f5ff', 'turquoise2': '00e5ee', 'turquoise3': '00c5cd',
      \ 'turquoise4': '00868b', 'violet red': 'd02090', 'violet': 'ee82ee',
      \ 'violetred': 'd02090', 'violetred1': 'ff3e96', 'violetred2': 'ee3a8c',
      \ 'violetred3': 'cd3278', 'violetred4': '8b2252', 'wheat': 'f5deb3',
      \ 'wheat1': 'ffe7ba', 'wheat2': 'eed8ae', 'wheat3': 'cdba96',
      \ 'wheat4': '8b7e66', 'white smoke': 'f5f5f5', 'white': 'ffffff',
      \ 'whitesmoke': 'f5f5f5', 'yellow green': '9acd32', 'yellow': 'ffff00',
      \ 'yellow1': 'ffff00', 'yellow2': 'eeee00', 'yellow3': 'cdcd00',
      \ 'yellow4': '8b8b00', 'yellowgreen': '9acd32',
      \ }

" The amount to increase the color value for brightness
let s:colors_8_bright = 0x55

" The 6x6x6 color cube values
let s:cube_6 = [0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff]


" Color Conversion Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Utility: Like min() but for float
function! s:fmin(vals) abort
  let m = a:vals[0]
  for f in a:vals
    if f < m
      let m = f
    endif
  endfor
  return m
endfunction


" Utility: Like max() but for float
function! s:fmax(vals) abort
  let m = a:vals[0]
  for f in a:vals
    if f > m
      let m = f
    endif
  endfor
  return m
endfunction


" Utilty: Clamp value to min and max
function! s:clamp(val, min, max) abort
  if a:val < a:min
    return a:min
  elseif a:val > a:max
    return a:max
  endif
  return a:val
endfunction


" Utility: Squared RGB distance
function! s:rgbdist2(rgb1, rgb2) abort
  return pow(a:rgb1[0] - a:rgb2[0], 2)
        \ + pow(a:rgb1[1] - a:rgb2[1], 2)
        \ + pow(a:rgb1[2] - a:rgb2[2], 2)
endfunction


" Utility: Normalize degrees
function! s:norm_degrees(d) abort
  return fmod(abs(a:d), 360.0)
  " return a:d - r * 360.0)
endfunction



" Convert a term color to an approximate RGB color
function! s:term2rgb(c, ...) abort
  if a:0
    let style = a:1
  else
    let style = []
  endif

  let c = a:c
  if c < 8 && index(style, 'bold') != -1
    let c += 8
  endif

  if c < 16
    let rgb = copy(s:colors_8[c % 8])
    if c > 7
      let rgb = map(rgb, 'min([0xff, v:val + s:colors_8_bright])')
    endif
    return rgb
  endif

  if c < 232
    let c -= 16
    if c == 0
      return [0, 0, 0]
    endif
    let r = c / 36
    let g = (c / 6) % 6
    let b = c % 6
    return [s:cube_6[r], s:cube_6[g], s:cube_6[b]]
  endif

  let c -= 232
  return repeat([8 + (c * 10)], 3)
endfunction


" Find the closest matching term color for an RGB sequence
" Taken from tmux:
"   https://github.com/tmux/tmux/commit/d9450bfccd3dc0c55c412a1871a70d3e94dd7be6
function! s:rgb2term(rgb) abort
  let [qr, qg, qb] = map(copy(a:rgb), 'v:val < 48 ? 0 : v:val < 114 ? 1 : (v:val - 35) / 40')
  let [cr, cg, cb] = map([qr, qg, qb], 's:cube_6[v:val]')

  if cr == qr && cg == qg && cb == qb
    return 16 + (36 * qr) + (6 * qg) + qb
  endif

  let gray_avg = (a:rgb[0] + a:rgb[1] + a:rgb[2]) / 3
  if gray_avg > 238
    let gray_i = 23
  else
    let gray_i = (gray_avg - 3) / 10
  endif

  let gray = 8 + (10 * gray_i)
  let d = s:rgbdist2([cr, cg, cb], a:rgb)
  if s:rgbdist2([gray, gray, gray], a:rgb) < d
    return 232 + gray_i
  endif

  return 16 + (36 * qr) + (6 * qg) + qb
endfunction

" RGB -> Hexadecimal string
function! s:rgb2hex(rgb) abort
  return join(map(copy(a:rgb), 'printf("%02x", v:val)'), '')
endfunction


" Hexadecimal string -> RGB
function! s:hex2rgb(hex) abort
  let hex = substitute(a:hex, '^#*', '', 'g')
  return map([hex[0:1], hex[2:3], hex[4:5]], 'str2nr(v:val, 16)')
endfunction


" RGB -> HSV
" Hue is expressed in degrees (0 to 359)
" http://www.rapidtables.com/convert/color/rgb-to-hsv.htm
function! s:rgb2hsv(rgb) abort
  let [r, g, b] = map(copy(a:rgb), 'v:val / 255.0')
  let min_c = s:fmin([r, g, b])
  let max_c = s:fmax([r, g, b])
  let delta = (max_c - min_c) * 1.0

  if delta == 0.0
    return [0.0, 0.0, 0.0]
  endif

  if max_c == r
    let h = fmod((g - b) / delta, 6.0)
  elseif max_c == g
    let h = ((b - r) / delta) + 2
  else
    let h = ((r - g) / delta) + 4
  endif

  let h = h * 60.0
  let s = max_c == 0.0 ? 0.0 : delta / max_c
  let v = max_c

  return [h, s, v]
endfunction


" HSV -> RGB
function! s:hsv2rgb(hsv) abort
  let [h, s, v] = a:hsv

  let h = s:norm_degrees(h)
  let s = s:clamp(s, 0.0, 1.0)
  let v = s:clamp(v, 0.0, 1.0)

  let c = v * s
  let x = c * (1 - abs(fmod(h / 60.0, 2.0) - 1.0))
  let m = v - c

  if h < 60.0
    let rgb = [c, x, 0.0]
  elseif h < 120.0
    let rgb = [x, c, 0.0]
  elseif h < 180.0
    let rgb = [0.0, c, x]
  elseif h < 240.0
    let rgb = [0.0, x, c]
  elseif h < 300.0
    let rgb = [x, 0.0, c]
  elseif h < 360.0
    let rgb = [c, 0.0, x]
  endif

  return map(rgb, 'float2nr(round((v:val + m) * 255.0))')
endfunction


" RGB -> HSL
" Hue is expressed in degrees (0 to 359)
function! s:rgb2hsl(rgb) abort
  let [r, g, b] = map(copy(a:rgb), 'v:val / 255.0')
  let min_c = s:fmin([r, g, b])
  let max_c = s:fmax([r, g, b])
  let delta = (max_c - min_c) * 1.0
  let l = (max_c + min_c) / 2

  if delta == 0.0
    return [0.0, 0.0, l]
  endif

  if max_c == r
    let h = fmod((g - b) / delta, 6.0)
  elseif max_c == g
    let h = ((b - r) / delta) + 2
  else
    let h = ((r - g) / delta) + 4
  endif

  let h = h * 60.0
  let s = 0.0
  if delta != 0.0
    let s = delta / (1 - abs((2 * l) - 1))
  endif

  return [h, s, l]
endfunction


" HSL -> RGB
function! s:hsl2rgb(hsl) abort
  let [h, s, l] = a:hsl

  let h = s:norm_degrees(h)
  let s = s:clamp(s, 0.0, 1.0)
  let l = s:clamp(l, 0.0, 1.0)

  let c = (1 - abs((2 * l) - 1)) * s
  let x = c * (1 - abs(fmod(h / 60.0, 2.0) - 1.0))
  let m = l - c / 2

  if h < 60.0
    let rgb = [c, x, 0.0]
  elseif h < 120.0
    let rgb = [x, c, 0.0]
  elseif h < 180.0
    let rgb = [0.0, c, x]
  elseif h < 240.0
    let rgb = [0.0, x, c]
  elseif h < 300.0
    let rgb = [x, 0.0, c]
  elseif h < 360.0
    let rgb = [c, 0.0, x]
  endif

  return map(rgb, 'float2nr(round((v:val + m) * 255.0))')
endfunction


" RGB -> RYB
" https://github.com/bahamas10/node-rgb2ryb/blob/master/rgb2ryb.js
function! s:rgb2ryb(rgb) abort
  let w = s:fmin(a:rgb)
  let [r, g, b] = map(copy(a:rgb), '(v:val - w) * 1.0')
  let mg = s:fmax([r, g, b])
  let y = s:fmin([r, g])
  let r -= y
  let g -= y

  if b != 0 && g != 0
    let b = b / 2.0
    let g = g / 2.0
  endif

  let y += g
  let b += g

  let my = s:fmax([r, y, b])
  if my != 0
    let n = mg / my
    let r = r * n
    let y = y * n
    let b = b * n
  endif

  return map([r, y, b], 'float2nr(round(v:val + w))')
endfunction


" RYB -> RGB
function! s:ryb2rgb(ryb) abort
  let w = s:fmin(a:ryb)
  let [r, y, b] = map(copy(a:ryb), '(v:val - w) * 1.0')
  let my = s:fmax([r, y, b])
  let g = s:fmin([y, b])
  let y -= g
  let b -= g

  if b != 0 && g != 0
    let b = b * 2.0
    let g = g * 2.0
  endif

  let r += y
  let g += y

  let mg = s:fmax([r, g, b])
  if mg != 0
    let n = my / mg
    let r = r * n
    let g = g * n
    let b = b * n
  endif

  return map([r, g, b], 'float2nr(round(v:val + w))')
endfunction


" End of Color Conversion Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Color adjustments.  Modifies in place.
function! s:brighter(hsl, amount) abort
  let a:hsl[1] += a:hsl[1] * -a:amount
endfunction


function! s:darker(hsl, amount) abort
  let a:hsl[2] += a:hsl[2] * -a:amount
endfunction


function! s:lighter(hsl, amount) abort
  let a:hsl[2] += a:hsl[2] * a:amount
endfunction


function! s:negative(hsl) abort
  let a:hsl[0] += 180.0
endfunction


function! s:complement(hsl) abort
  let rgb = s:hsl2rgb(a:hsl)
  let comp = s:ryb2rgb(map(s:rgb2ryb(rgb), 'sqrt(65025 - pow(v:val, 2))'))
  let [a:hsl[0], a:hsl[1], a:hsl[2]] = s:rgb2hsl(comp)
endfunction


function! s:build_palette(theme) abort
  let palette = {
        \ 'none': ['none', 'none'],
        \ 'black': [0, '000000'],
        \ 'white': [255, 'ffffff'],
        \ }

  for [name, hex] in items(a:theme)
    if has_key(palette, name)
      continue
    endif

    let rgb = s:hex2rgb(hex)
    let palette[name] = [s:rgb2term(rgb), hex]
  endfor

  return palette
endfunction


function! colorpal#load() abort
  let theme = get(g:, 'colorpal_palette', s:default_palette)
  if type(theme) == 4
    let s:user_palette = s:build_palette(theme)
    return
  endif

  " Assume a string is a theme file
  let s:user_palette = {}
  let themefile = s:plugin_base.'/data/'.theme.'.yml'
  if !filereadable(themefile)
    echohl ErrorMsg
    echo '[colorpal] Theme file was not found:' theme
    echohl None
    return
  endif

  let palette = {}
  for line in readfile(themefile)
    let name = matchstr(line, '^[^:]\+')
    let hex = matchstr(line, '"\zs\x\{6}\ze"')
    if empty(name) || empty(hex)
      continue
    endif
    let palette[name] = tolower(hex)
  endfor

  let s:user_palette = s:build_palette(palette)
endfunction


function! colorpal#parse_name(name) abort
  if !exists('s:user_palette')
    call colorpal#load()
  endif

  if a:name == 'none'
    return ['none', 'none']
  endif

  let parts = split(a:name, ',')
  if empty(a:name) || a:name == '-' || empty(parts)
    return ['', '']
  endif

  " Try the cache first
  if has_key(s:user_palette, a:name)
    return s:user_palette[a:name]
  endif

  if !has_key(s:user_palette, parts[0])
    return ['', '']
  endif

  let [cterm, chex] = s:user_palette[parts[0]]

  if len(parts) > 1
    let rgb = s:hex2rgb(chex)
    let hsl = s:rgb2hsl(rgb)

    for part in parts[1:]
      if part =~# '^\w\+[+-]=\?\%(\d*\.\)\?\d\+$'
        let op = matchstr(part, '[=+-]\+')
        let operand = split(part, op)
        " Hue, Saturation, Value - or - Color, White, Black
        let a = stridx('hslcwb', operand[0])
        let hsl_i = a % 3

        if hsl_i != -1
          let hsl_a = str2float(operand[1])
          " All values are converted to the 0.0...1.0 scale except for Hue.
          if operand[1] !~# '\.' && hsl_i != 0
            let hsl_a = (hsl_a / 100.0)
          endif

          let m = op[0] ==# '+' ? 1 : -1
          if a > 3
            " Adding/subtracting [w]hite or [b]lack
            let m = m * -1
          endif

          let hsl_a = hsl_a * m

          if op[1] ==# '='
            let val = hsl[hsl_i] + (hsl[hsl_i] * hsl_a)
          else
            let val = hsl[hsl_i] + hsl_a
          endif

          if hsl_i == 0
            let hsl[hsl_i] = val
          else
            let hsl[hsl_i] = s:clamp(val, 0.0, 1.0)
          endif
        endif
      elseif part =~# '^li\%[ght]'
        " Decrease the saturation
        call s:lighter(hsl, 0.3)
      elseif part =~# '^da\%[rk]'
        " Decrease the value
        call s:darker(hsl, 0.3)
      elseif part =~# '^br\%[ight]'
        " Increase the value
        call s:brighter(hsl, 0.3)
      elseif part =~# '^ne\%[gative]'
        " Get the negative (opposite color).  Red -> Cyan
        call s:negative(hsl)
      elseif part =~# '^co\%[mplement]'
        " Get the RYB complement (opposite color).  Red -> Green
        call s:complement(hsl)
      endif
    endfor

    let rgb = s:hsl2rgb(hsl)
    let chex = s:rgb2hex(rgb)
    let cterm = s:rgb2term(rgb)
  endif

  " Cache the parsed name so it doesn't need to be evaluated again.
  let s:user_palette[a:name] = [cterm, chex]
  return s:user_palette[a:name]
endfunction


function! colorpal#begin() abort
  if !exists(':CPHL')
    command! -bang -nargs=+ CPHL call colorpal#highlight(<bang>0, <f-args>)
  endif
endfunction


function! colorpal#finish() abort
  " Note: This is a stub.  There are plans to make this mandatory for taking a
  " snapshot of the theme to make runtime color adjustments more accurate.
endfunction


function! colorpal#highlight(bang, group, ...) abort
  let fg = ''
  let bg = ''
  let style = ''

  if a:0
    let fg = a:1
  endif

  if a:0 > 1
    let bg = a:2
  endif

  if a:0 > 2
    let style = a:3
  endif

  let [ctermfg, guifg] = colorpal#parse_name(fg)
  let [ctermbg, guibg] = colorpal#parse_name(bg)

  if !empty(guifg)
    if guifg != 'none'
      let guifg = '#'.guifg
    endif
    let fg = 'ctermfg='.ctermfg.' guifg='.guifg
  else
    let fg = ''
  endif

  if !empty(guibg)
    if guibg != 'none'
      let guibg = '#'.guibg
    endif
    let bg = 'ctermbg='.ctermbg.' guibg='.guibg
  else
    let bg = ''
  endif

  if !empty(style) && style != '-'
    let style = 'cterm='.style.' gui='.style
  else
    let style = ''
  endif

  if !empty(fg.bg.style)
    let cline = a:group.' '.fg.' '.bg.' '.style
    execute 'highlight' (a:bang ? 'default' : '') cline
  endif
endfunction


function! s:theme_adjust(func, ...) abort
  " Take a snapshot of the original theme to restore upper and lower values?
  redir => hltext
  silent highlight
  redir END

  for hl in split(hltext, "\n")
    let group = matchstr(hl, '^\S\+')
    if empty(group)
      continue
    endif

    let ctermfg = matchstr(hl, 'ctermfg=\zs\d\+')
    let ctermbg = matchstr(hl, 'ctermbg=\zs\d\+')
    let guifg = tolower(matchstr(hl, 'guifg=#\zs\w\+'))
    let guibg = tolower(matchstr(hl, 'guibg=#\zs\w\+'))

    let guifg = get(s:color_names, guifg, guifg)
    let guibg = get(s:color_names, guibg, guibg)

    if empty(guifg) && !empty(ctermfg)
      let guifg = s:rgb2hex(s:term2rgb(ctermfg))
    endif

    if empty(guibg) && !empty(ctermbg)
      let guibg = s:rgb2hex(s:term2rgb(ctermbg))
    endif

    if empty(guifg.guibg)
      continue
    endif

    let hl = 'highlight '.group

    if !empty(guifg)
      let hsl = s:rgb2hsl(s:hex2rgb(guifg))
      call call(a:func, [hsl] + a:000)
      let rgb = s:hsl2rgb(hsl)
      let cterm = s:rgb2term(rgb)
      let hl .= ' ctermfg='.cterm.' guifg=#'.s:rgb2hex(rgb)
    endif

    if !empty(guibg)
      let hsl = s:rgb2hsl(s:hex2rgb(guibg))
      call call(a:func, [hsl] + a:000)
      let rgb = s:hsl2rgb(hsl)
      let cterm = s:rgb2term(rgb)
      let hl .= ' ctermbg='.cterm.' guibg=#'.s:rgb2hex(rgb)
    endif

    execute hl
  endfor
endfunction


function! colorpal#negative() abort
  call s:theme_adjust(function('s:negative'))
endfunction


function! colorpal#complement() abort
  call s:theme_adjust(function('s:complement'))
endfunction


function! colorpal#darken() abort
  call s:theme_adjust(function('s:darker'), 0.1)
endfunction


function! colorpal#brighten() abort
  call s:theme_adjust(function('s:brighter'), 0.1)
endfunction


function! colorpal#lighten() abort
  call s:theme_adjust(function('s:lighter'), 0.1)
endfunction

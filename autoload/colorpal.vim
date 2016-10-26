let s:plugin_base = expand('<sfile>:p:h:h')

let s:styles = [
      \ 'bold',
      \ 'underline',
      \ 'undercurl',
      \ 'reverse',
      \ 'inverse',
      \ 'italic',
      \ 'standout',
      \ ]

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

let s:term_lab = {
      \ '16': [0.0, 0.0, 0.0], '17': [7.46321, 38.396151, -52.360285],
      \ '18': [14.112276, 49.371926, -67.261454], '19': [20.420984, 59.71565, -81.353145],
      \ '20': [26.466121, 69.627224, -94.856099], '21': [32.302587, 79.196662, -107.892948],
      \ '22': [34.364043, -41.842403, 40.377113], '23': [36.004775, -23.342522, -6.878802],
      \ '24': [37.723152, -8.27353, -28.861176], '25': [40.047393, 8.059567, -49.10541],
      \ '26': [42.899613, 24.243175, -67.697426], '27': [46.183203, 39.624098, -84.871025],
      \ '28': [48.670619, -53.728293, 51.846769], '29': [49.682567, -41.466004, 12.852988],
      \ '30': [50.777422, -29.973275, -8.832817], '31': [52.312233, -16.079967, -29.696349],
      \ '32': [54.274663, -0.974296, -49.378889], '33': [56.632285, 14.448952, -67.862104],
      \ '34': [62.219513, -64.984703, 62.708988], '35': [62.915914, -56.273736, 30.534308],
      \ '36': [63.679663, -47.530405, 9.966325], '37': [64.767705, -36.252862, -10.683347],
      \ '38': [66.187161, -23.171347, -30.691847], '39': [67.932038, -9.010726, -49.829132],
      \ '40': [75.202349, -75.770832, 73.117394], '41': [75.716267, -69.237895, 46.396968],
      \ '42': [76.28368, -62.435013, 27.335297], '43': [77.098718, -53.313388, 7.386439],
      \ '44': [78.173489, -42.270094, -12.456563], '45': [79.511766, -29.794352, -31.781045],
      \ '46': [87.737033, -86.184636, 83.166515], '47': [88.134974, -81.079727, 60.765001],
      \ '48': [88.57598, -75.64877, 43.345446], '49': [89.212414, -68.189217, 24.380315],
      \ '50': [90.0569, -58.898434, 5.021891], '51': [91.116521, -48.079618, -14.168571],
      \ '52': [17.612373, 38.892849, 27.20565], '53': [21.053117, 47.702152, -29.553406],
      \ '54': [24.264756, 55.119724, -50.136967], '55': [28.189093, 63.508354, -68.219825],
      \ '56': [32.566941, 72.290135, -84.528795], '57': [37.212116, 81.17002, -99.576199],
      \ '58': [38.928307, -10.465334, 45.863509], '59': [40.31768, 0.002554, -0.019921],
      \ '60': [41.792911, 9.722218, -22.20991], '61': [43.817709, 21.366608, -42.859208],
      \ '62': [46.343173, 33.921024, -61.948962], '63': [49.29819, 46.663327, -79.646918],
      \ '64': [51.56573, -31.108962, 55.354841], '65': [52.494569, -22.365153, 17.167181],
      \ '66': [53.503319, -13.752261, -4.484142], '67': [54.923689, -2.854057, -25.442239],
      \ '68': [56.749651, 9.53177, -45.297529], '69': [58.95659, 22.681111, -63.999719],
      \ '70': [64.236012, -48.205648, 65.160833], '71': [64.898278, -41.171114, 33.468444],
      \ '72': [65.625553, -33.961256, 12.988825], '73': [66.66331, -24.459882, -7.655392],
      \ '74': [68.019979, -13.181903, -27.713713], '75': [69.691772, -0.698145, -46.937994],
      \ '76': [76.699463, -62.883196, 74.940852], '77': [77.197047, -57.22221, 48.518246],
      \ '78': [77.746731, -51.269804, 29.546885], '79': [78.536846, -43.202778, 9.635529],
      \ '80': [79.579699, -33.315414, -10.208945], '81': [80.879676, -22.001608, -29.562695],
      \ '82': [88.900217, -75.971011, 84.584615], '83': [89.289429, -71.355907, 62.373096],
      \ '84': [89.720877, -66.421839, 45.031508], '85': [90.343722, -59.60629, 26.111663],
      \ '86': [91.170543, -51.059361, 6.771013], '87': [92.208573, -41.031744, -12.422485],
      \ '88': [27.160414, 49.940879, 40.136908], '89': [29.354667, 55.736656, -15.927794],
      \ '90': [31.578547, 61.252582, -37.948443], '91': [34.490132, 68.056586, -57.645299],
      \ '92': [37.944883, 75.666752, -75.469744], '93': [41.799629, 83.721293, -91.83172],
      \ '94': [43.264198, 9.135533, 50.925893], '95': [44.463711, 16.314612, 6.491619],
      \ '96': [45.749831, 23.378789, -15.793456], '97': [47.534248, 32.309181, -36.734484],
      \ '98': [49.787854, 42.454989, -56.220184], '99': [52.459339, 53.236528, -74.360132],
      \ '100': [54.531422, -13.438151, 58.891648], '101': [55.385187, -6.767046, 21.560938],
      \ '102': [56.315465, 0.003279, -0.02558], '103': [57.630453, 8.831582, -21.051929],
      \ '104': [59.329134, 19.188051, -41.05731], '105': [61.393502, 30.51918, -59.959924],
      \ '106': [66.375139, -33.33801, 67.736949], '107': [67.003845, -27.527522, 36.563484],
      \ '108': [67.695147, -21.480799, 16.18768], '109': [68.68311, -13.380642, -4.440564],
      \ '110': [69.977287, -3.587375, -24.541803], '111': [71.575898, 7.4572, -43.848883],
      \ '112': [78.316771, -50.588122, 76.898437], '113': [78.797566, -45.652609, 50.79927],
      \ '114': [79.329, -40.421283, 31.929311], '115': [80.093416, -33.267162, 12.062642],
      \ '116': [81.103283, -24.404697, -7.779262], '117': [82.363566, -14.147239, -27.160561],
      \ '118': [90.169923, -65.773256, 86.125906], '119': [90.549932, -61.60075, 64.122106],
      \ '120': [90.971292, -57.120187, 46.867183], '121': [91.579785, -50.899197, 27.998657],
      \ '122': [92.387927, -43.048597, 8.679353], '123': [93.403093, -33.772988, -10.515534],
      \ '124': [36.202788, 60.403802, 50.578898], '125': [37.73486, 64.508797, -2.463838],
      \ '126': [39.349153, 68.664559, -25.160116], '127': [41.546547, 74.085376, -45.898876],
      \ '128': [44.261968, 80.474184, -64.888208], '129': [47.40962, 87.536747, -82.399433],
      \ '130': [48.633814, 27.334063, 57.026639], '131': [49.646888, 32.351526, 14.514247],
      \ '132': [50.742905, 37.490517, -7.771643], '133': [52.27925, 44.258891, -28.96428],
      \ '134': [54.243497, 52.291618, -48.843783], '135': [56.603112, 61.191462, -67.453553],
      \ '136': [58.45415, 5.073643, 63.489314], '137': [59.221693, 10.072221, 27.327338],
      \ '138': [60.061062, 15.271388, 5.868078], '139': [61.252706, 22.232048, -15.208019],
      \ '140': [62.800481, 30.642188, -35.373394], '141': [64.693315, 40.12222, -54.50599],
      \ '142': [69.308191, -16.253527, 71.229812], '143': [69.894849, -11.59925, 40.777043],
      \ '144': [70.540919, -6.685396, 20.55934], '145': [71.466002, 0.003967, -0.03094],
      \ '146': [72.680819, 8.244924, -20.175331], '147': [74.18587, 17.725274, -39.580859],
      \ '148': [80.579988, -35.516599, 79.617165], '149': [81.038674, -31.34819, 53.972767],
      \ '150': [81.546035, -26.892578, 35.251045], '151': [82.276485, -20.739844, 15.453897],
      \ '152': [83.242638, -13.027903, -4.377442], '153': [84.450147, -3.986155, -23.79046],
      \ '154': [91.968562, -52.704506, 88.297618], '155': [92.33608, -49.038702, 66.588395],
      \ '156': [92.743739, -45.082525, 49.458881], '157': [93.332717, -39.557054, 30.666316],
      \ '158': [94.115428, -32.532731, 11.380625], '159': [95.099414, -24.163821, -7.812879],
      \ '160': [44.86738, 70.429595, 59.090758], '161': [46.006266, 73.503738, 10.503502],
      \ '162': [47.231037, 76.722243, -12.380963], '163': [48.936094, 81.068179, -33.719414],
      \ '164': [51.098094, 86.38203, -53.517149], '165': [53.671967, 92.464536, -71.924457],
      \ '166': [54.690715, 43.555852, 63.726114], '167': [55.540706, 47.203522, 23.472283],
      \ '168': [56.467021, 51.03861, 1.316425], '169': [57.77666, 56.23638, -20.035242],
      \ '170': [59.468839, 62.609796, -40.244284], '171': [61.525873, 69.911695, -59.285194],
      \ '172': [63.156502, 22.862689, 68.892929], '173': [63.836724, 26.638462, 34.164499],
      \ '174': [64.583201, 30.638538, 12.913463], '175': [65.647455, 36.105644, -8.167565],
      \ '176': [67.03725, 42.873761, -28.472236], '177': [68.747657, 50.70293, -47.831623],
      \ '178': [72.962305, 1.429997, 75.521898], '179': [73.502195, 5.120799, 45.976324],
      \ '180': [74.09775, 9.064861, 25.979012], '181': [74.95226, 14.50941, 5.46023],
      \ '182': [76.077432, 21.330839, -14.714224], '183': [77.47597, 29.324857, -34.21951],
      \ '184': [83.467602, -18.951279, 83.052501], '185': [83.900215, -15.493196, 57.99035],
      \ '186': [84.379135, -11.767994, 39.467747], '187': [85.069355, -6.576565, 19.770533],
      \ '188': [85.983565, 0.004625, -0.036075], '189': [87.128116, 7.820039, -19.478528],
      \ '190': [94.29827, -37.67118, 91.090874], '191': [94.650501, -34.514207, 69.763235],
      \ '192': [95.041374, -31.090146, 52.800474], '193': [95.606415, -26.279216, 34.11175],
      \ '194': [96.357879, -20.116942, 14.875272], '195': [97.303471, -12.710733, -4.3108],
      \ '196': [53.232882, 80.10931, 67.212084], '197': [54.11837, 82.509552, 22.886116],
      \ '198': [55.081885, 85.072482, 0.135319], '199': [56.441633, 88.609511, -21.489437],
      \ '200': [58.194562, 93.044307, -41.809531], '201': [60.319934, 98.254219, -60.872448],
      \ '202': [61.171862, 58.017159, 70.726333], '203': [61.88704, 60.779975, 32.917517],
      \ '204': [62.670799, 63.734698, 11.0289], '205': [63.786344, 67.818209, -10.369472],
      \ '206': [65.24, 72.943679, -30.814553], '207': [67.024497, 78.966325, -50.210998],
      \ '208': [68.451728, 39.352671, 74.855558], '209': [69.050221, 42.263129, 41.75713],
      \ '210': [69.709039, 45.387526, 20.804059], '211': [70.651875, 49.724068, -0.219301],
      \ '212': [71.889146, 55.19455, -20.619761], '213': [73.42074, 61.656317, -40.176618],
      \ '214': [77.232943, 18.717646, 80.461563], '215': [77.724894, 21.655071, 51.980783],
      \ '216': [78.268458, 24.824181, 32.270581], '217': [79.049958, 29.248646, 11.866569],
      \ '218': [80.081763, 34.870457, -8.31236], '219': [81.368458, 41.564581, -27.904487],
      \ '220': [86.928585, -1.924215, 87.123327], '221': [87.332764, 0.926246, 62.759191],
      \ '222': [87.7806, 4.017404, 44.488648], '223': [88.426737, 8.359763, 24.926745],
      \ '224': [89.283823, 13.920426, 5.165431], '225': [90.358827, 20.601511, -14.296925],
      \ '226': [97.138247, -21.555908, 94.467084], '227': [97.473094, -18.868079, 73.603672],
      \ '228': [97.844859, -15.939487, 56.850202], '229': [98.38261, -11.801804, 38.29594],
      \ '230': [99.098378, -6.464022, 19.127735], '231': [100.0, 0.00526, -0.041033],
      \ '232': [2.193388, 0.000298, -0.002328], '233': [5.463862, 0.000743, -0.005799],
      \ '234': [10.268184, 0.001191, -0.009292], '235': [15.15972, 0.001413, -0.011022],
      \ '236': [19.865534, 0.001626, -0.012687], '237': [24.42132, 0.001833, -0.014298],
      \ '238': [28.851902, 0.002034, -0.015866], '239': [33.175472, 0.00223, -0.017395],
      \ '240': [37.40589, 0.002422, -0.018891], '241': [41.554043, 0.00261, -0.020359],
      \ '242': [45.628689, 0.002795, -0.0218], '243': [49.637014, 0.002977, -0.023218],
      \ '244': [53.585013, 0.003156, -0.024615], '245': [57.477756, 0.003332, -0.025992],
      \ '246': [61.319583, 0.003506, -0.027351], '247': [65.114245, 0.003678, -0.028693],
      \ '248': [68.865018, 0.003849, -0.03002], '249': [72.574783, 0.004017, -0.031332],
      \ '250': [76.246091, 0.004183, -0.032631], '251': [79.881216, 0.004348, -0.033916],
      \ '252': [83.4822, 0.004511, -0.03519], '253': [87.050879, 0.004673, -0.036453],
      \ '254': [90.58892, 0.004834, -0.037704], '255': [94.097834, 0.004993, -0.038945],
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


" L*a*b color
function! s:normalize_xyz(n) abort
  if a:n > 0.04045
    return pow((a:n + 0.055) / 1.055, 2.4)
  endif
  return a:n / 12.92
endfunction


function! s:normalize_lab(n) abort
  if a:n > 0.008856
    return pow(a:n, 0.333333)
  endif
  return (7.787 * a:n) + 0.137931
endfunction


" http://www.easyrgb.com/index.php?X=MATH&H=02#text2
" http://www.easyrgb.com/index.php?X=MATH&H=07#text7
function! s:rgb2lab(rgb) abort
  let [r, g, b] = map(copy(a:rgb), 'v:val / 255.0')

  let r = s:normalize_xyz(r) * 100.0
  let g = s:normalize_xyz(g) * 100.0
  let b = s:normalize_xyz(b) * 100.0

  let x = s:normalize_lab((r * 0.4124 + g * 0.3576 + b * 0.1805) / 95.047)
  let y = s:normalize_lab((r * 0.2126 + g * 0.7152 + b * 0.0722) / 100.000)
  let z = s:normalize_lab((r * 0.0193 + g * 0.1192 + b * 0.9505) / 108.833)

  return [(116.0 * y) - 16, 500.0 * (x - y), 200.0 * (y - z)]
endfunction


" Delta-E cie1994
" http://stackoverflow.com/a/14216548/4932879
function! s:cie1994(lab1, lab2, ...) abort
  let [l1, a1, b1] = a:lab1
  let [l2, a2, b2] = a:lab2

  let textile = a:0 ? a:1 : 0
  let k1 = textile ? 0.048 : 0.045
  let k2 = textile ? 0.014 : 0.015
  let kh = 1.0
  let kc = 1.0
  let kl = textile ? 2.0 : 1.0

  let c1 = sqrt(a1 * a1 + b1 * b1)
  let c2 = sqrt(a2 * a2 + b2 * b2)

  let sc = 1.0 + k1 * c1
  let sh = 1.0 + k2 * c1
  let sl = 1.0

  let da = a1 - a2
  let db = b1 - b2
  let dc = c1 - c2
  let dl = l1 - l2
  let dh = sqrt(da * da + db * db + dc * dc)

  return sqrt(
        \ pow(dl / (kl * sl), 2) +
        \ pow(dc / (kc * sc), 2) +
        \ pow(dh / (kh * sh), 2)
        \ )
endfunction


function! s:similar_sort(a, b) abort
  if a:a[0] > a:b[0]
    return 1
  elseif a:a[0] < a:b[0]
    return -1
  endif
  return 0
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
  if get(g:, 'colorpal_more_accurate', 0)
    " More accurate, but slower, color match
    let lab = s:rgb2lab(a:rgb)
    let matches = sort(map(range(16, 255), '[s:cie1994(lab, s:term_lab[v:val]), v:val]'), 's:similar_sort')
    return str2nr(matches[0][1])
  endif

  let [qr, qg, qb] = map(copy(a:rgb), 'v:val < 48 ? 0 : v:val < 114 ? 1 : (v:val - 35) / 40')
  let [cr, cg, cb] = map([qr, qg, qb], 's:cube_6[v:val]')

  if cr == a:rgb[0] && cg == a:rgb[1] && cb == a:rgb[2]
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

  let h = s:norm_degrees(h) / 60.0
  let s = s:clamp(s, 0.0, 1.0)
  let v = s:clamp(v, 0.0, 1.0)

  let c = v * s
  let x = c * (1 - abs(fmod(h, 2.0) - 1.0))
  let m = v - c

  if h < 1.0
    let rgb = [c, x, 0.0]
  elseif h < 2.0
    let rgb = [x, c, 0.0]
  elseif h < 3.0
    let rgb = [0.0, c, x]
  elseif h < 4.0
    let rgb = [0.0, x, c]
  elseif h < 5.0
    let rgb = [x, 0.0, c]
  elseif h < 6.0
    let rgb = [c, 0.0, x]
  else
    let rgb = [0.0, 0.0, 0.0]
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
    let h = (g - b) / delta + (g < b ? 6.0 : 0.0)
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

  let h = s:norm_degrees(h) / 60.0
  let s = s:clamp(s, 0.0, 1.0)
  let l = s:clamp(l, 0.0, 1.0)

  let c = (1.0 - abs(2.0 * l - 1.0)) * s
  let x = c * (1.0 - abs(fmod(h, 2.0) - 1.0))
  let m = l - (0.5 * c)

  if h < 1.0
    let rgb = [c, x, 0.0]
  elseif h < 2.0
    let rgb = [x, c, 0.0]
  elseif h < 3.0
    let rgb = [0.0, c, x]
  elseif h < 4.0
    let rgb = [0.0, x, c]
  elseif h < 5.0
    let rgb = [x, 0.0, c]
  elseif h < 6.0
    let rgb = [c, 0.0, x]
  else
    let rgb = [0.0, 0.0, 0.0]
  endif

  return map(rgb, 'float2nr(round((v:val + m) * 255.0))')
endfunction


" HSL -> HSV
function! s:hsl2hsv(hsl) abort
  return s:rgb2hsv(s:hsl2rgb(a:hsl))
endfunction


" HSV -> HSL
function! s:hsv2hsl(hsv) abort
  return s:rgb2hsl(s:hsv2rgb(a:hsv))
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

" Color Blending Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:blend_multiply(a, b) abort
  return a:a * a:b
endfunction


function! s:blend_screen(a, b) abort
  return a:a + a:b - a:a * a:b
endfunction


function! s:blend_add(a, b) abort
  return s:fmin([1.0, a:a + a:b])
endfunction


function! s:blend_subtract(a, b) abort
  return s:fmax([0.0, a:a - a:b])
endfunction


function! s:blend_average(a, b) abort
  return (a:a + a:b) / 2.0
endfunction


function! s:blend_overlay(a, b) abort
  let a = a:a * 2.0
  if a <= 1.0
    return a * a:b
  endif
  return s:blend_screen(a - 1.0, a:b)
endfunction


function! s:blend_difference(a, b) abort
  return abs(a:a - a:b)
endfunction


function! s:blend_exclusion(a, b) abort
  return a:a + a:b - 2.0 * a:a * a:b
endfunction


function! s:blend_negation(a, b) abort
  return 1.0 - abs(a:a + a:b - 1.0)
endfunction


function! s:blend(rgb1, rgb2, alpha, func) abort
  let rgb1 = map(copy(a:rgb1), 'v:val / 255.0')
  let rgb2 = map(copy(a:rgb2), 'v:val / 255.0')
  let rgb3 = [0.0, 0.0, 0.0]

  " Typically, both colors will have an alpha channel that needs to blend.
  " But, in this case, rgb1 is the background and is assumed to have an alpha
  " of 1.0.  a:alpha is for rgb2 and is used to determine how much it is
  " blended with rgb1.
  let alpha = a:alpha + 1.0 * (1.0 - a:alpha)

  for i in range(3)
    let c = call(a:func, [rgb1[i], rgb2[i]])

    if alpha > 0.0
      let rgb3[i] = (a:alpha * rgb2[i] + 1.0 * (rgb1[i] - a:alpha * (rgb1[i] + rgb2[i] - c))) / alpha
    else
      let rgb3[i] = c
    endif
  endfor

  let ret = map(copy(rgb3), 'float2nr(round(v:val * 255))')
  return ret
endfunction


" Color adjustments.  Modifies in place.
function! s:saturate(hsl, amount) abort
  let a:hsl[1] += a:hsl[1] * a:amount
endfunction


function! s:desaturate(hsl, amount) abort
  let a:hsl[1] += a:hsl[1] * -a:amount
endfunction


function! s:lighter(hsl, amount) abort
  let a:hsl[2] += a:hsl[2] * a:amount
endfunction


function! s:darker(hsl, amount) abort
  let a:hsl[2] += a:hsl[2] * -a:amount
endfunction


function! s:brighter(hsl, amount) abort
  call s:saturate(a:hsl, a:amount)
  call s:lighter(a:hsl, a:amount)
endfunction


function! s:dimmer(hsl, amount) abort
  call s:desaturate(a:hsl, a:amount)
  call s:darker(a:hsl, a:amount)
endfunction


function! s:negative(hsl) abort
  if a:hsl[1] < 0.1
    let a:hsl[2] = 1.0 - a:hsl[2]
  endif
  let a:hsl[0] += 180.0
endfunction


function! s:invert(hsl) abort
  let a:hsl[0] += 180.0
  let a:hsl[1] = 1.0 - a:hsl[1]
  let a:hsl[2] = 1.0 - a:hsl[2]
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


function! colorpal#load(...) abort
  if a:0
    let theme = a:1
  else
    let theme = get(g:, 'colorpal_palette', s:default_palette)
  endif

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


function! colorpal#theme_compl(...) abort
  let compl = []
  for line in split(glob(s:plugin_base.'/data/**/*.yml'), "\n")
    call add(compl, matchstr(fnamemodify(line, ':r'), s:plugin_base.'/data/\zs.*'))
  endfor
  return join(compl, "\n")
endfunction


function! colorpal#set_theme(name) abort
  unlet! s:user_palette
  call colorpal#load(a:name)
  execute 'colorscheme' g:colors_name
endfunction


function! colorpal#parse_name(name, segment) abort
  if !exists('s:user_palette')
    call colorpal#load()
  endif

  if a:name ==# 'none'
    return ['NONE', 'NONE']
  endif

  let parts = split(a:name, '\%(([^)]\+\)\@<!,')
  if empty(a:name) || a:name == '-' || empty(parts)
    return ['', '']
  endif

  let name = join(parts, ',')

  " Try the cache first
  if has_key(s:user_palette, name)
    return s:user_palette[name]
  endif

  if parts[0] =~# '^#'
    let chex = substitute(name, '^#\+', '', 'g')
    let cterm = s:rgb2term(s:hex2rgb(chex))
  elseif !has_key(s:user_palette, parts[0])
    if has_key(s:parsed_hl, parts[0])
      " Get a color from previously parsed highlights.
      let [cterm, chex] = s:parsed_hl[parts[0]][a:segment]
    elseif has_key(s:color_names, parts[0])
      let cterm = s:rgb2term(s:hex2rgb(s:color_names[parts[0]]))
      let chex = s:color_names[parts[0]]
      let s:user_palette[parts[0]] = [cterm, chex]
    else
      return ['', '']
    endif
  else
    let [cterm, chex] = s:user_palette[parts[0]]
  endif

  let cache = 1

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
      elseif part =~# '^\w\+([^)]\+)$'
        let func = 's:blend_'.matchstr(part, '\w\+')
        if !exists('*'.func)
          let cache = 0
          continue
        endif

        let args = split(matchstr(part, '(\zs[^)]\+'), ',')
        if len(args) > 1
          if args[0] =~# '^#'
            let bcolor = args[0]
          elseif !has_key(s:user_palette, args[0])
            if has_key(s:parsed_hl, args[0])
              let bcolor = s:parsed_hl[args[0]][a:segment][1]
            else
              if !has_key(s:color_names, args[0])
                let cache = 0
                continue
              endif
              let bcolor = s:color_names[args[0]]
            endif
          else
            let bcolor = s:user_palette[args[0]][1]
          endif

          let bval = str2float(args[1])
          if args[1] !~# '\.'
            let bval = bval / 100.0
          endif

          let rgb = s:hsl2rgb(hsl)
          let brgb = s:hex2rgb(bcolor)
          let brgb = s:blend(rgb, brgb, bval, function(func))
          let [hsl[0], hsl[1], hsl[2]] = copy(s:rgb2hsl(brgb))
        endif
      elseif part =~# '^li\%[ght]'
        " Decrease the saturation
        call s:lighter(hsl, 0.1)
      elseif part =~# '^da\%[rk]'
        " Decrease the lightness
        call s:darker(hsl, 0.1)
      elseif part =~# '^br\%[ight]'
        " Increase HSV value
        call s:brighter(hsl, 0.1)
      elseif part =~# '^di\%[m]'
        " Decrease HSV value
        call s:dimmer(hsl, 0.1)
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
  if cache
    let s:user_palette[name] = [cterm, chex]
  endif
  return [cterm, chex]
endfunction


function! colorpal#begin() abort
  let s:parsed_hl = {}
  if !exists(':CPHL')
    command! -bang -nargs=+ CPHL call colorpal#highlight(<bang>0, <f-args>)
  endif
endfunction


function! colorpal#highlight(bang, group, ...) abort
  if a:group == 'link'
    if a:0 > 1
      execute 'highlight' (a:bang ? 'default' : '') 'link' a:1 a:2
    endif
    return
  endif

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

  let [ctermfg, guifg] = colorpal#parse_name(fg, 'fg')
  let [ctermbg, guibg] = colorpal#parse_name(bg, 'bg')

  if !empty(guifg)
    let fg = 'ctermfg='.ctermfg.' guifg='
    if guifg !=? 'none'
      let fg .= '#'
    endif
    let fg .= guifg
  else
    let fg = ''
  endif

  if !empty(guibg)
    let bg = 'ctermbg='.ctermbg.' guibg='
    if guibg !=? 'none'
      let bg .= '#'
    endif
    let bg .= guibg
  else
    let bg = ''
  endif

  let styles = []
  let style_str = ''

  if !empty(style) && style != '-'
    for s in split(style, ',')
      if index(s:styles, s) != -1
        call add(styles, s)
      elseif has_key(s:parsed_hl, s)
        call extend(styles, s:parsed_hl[s].styles)
      endif
    endfor
    if !empty(styles)
      let sj = join(styles, ',')
      let style_str = 'cterm='.sj.' gui='.sj
    endif
  endif

  if !empty(fg.bg.style_str)
    if !has_key(s:parsed_hl, a:group)
      let s:parsed_hl[a:group] = {
            \ 'fg': [ctermfg, guifg],
            \ 'bg': [ctermbg, guibg],
            \ 'styles': styles,
            \ }
    endif
    let cline = a:group.' '.fg.' '.bg.' '.style_str
    execute 'highlight' (a:bang ? 'default' : '') cline
  endif
endfunction


function! s:theme_adjust(func, ...) abort
  if !exists('s:hl_snapshot')
    " The snapshot stores the HSL values so that the values can go beyond
    " limits.  This way, adjustments remain consistent to the original color.
    " Color adjustments that clamp the values will result in lost color
    " information.
    redir => hltext
    silent highlight
    redir END
    let s:hl_snapshot = {}
    let s:hl_orig = []

    for hl in split(hltext, "\n")
      let group = matchstr(hl, '^\S\+')
      if empty(group)
        continue
      endif

      let ctermfg = matchstr(hl, 'ctermfg=\zs\d\+')
      let ctermbg = matchstr(hl, 'ctermbg=\zs\d\+')
      let guifg = tolower(matchstr(hl, 'guifg=#\zs\w\+'))
      let guibg = tolower(matchstr(hl, 'guibg=#\zs\w\+'))

      let orig = 'highlight '.group

      if !empty(ctermfg)
        let orig .= ' ctermfg='.ctermfg
      endif

      if !empty(ctermbg)
        let orig .= ' ctermbg='.ctermbg
      endif

      if !empty(guifg)
        let orig .= ' guifg=#'.guifg
      endif

      if !empty(guibg)
        let orig .= ' guibg=#'.guibg
      endif

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

      if !empty(guifg)
        let fghsl = s:rgb2hsl(s:hex2rgb(guifg))
      else
        let fghsl = []
      endif

      if !empty(guibg)
        let bghsl = s:rgb2hsl(s:hex2rgb(guibg))
      else
        let bghsl = []
      endif

      let s:hl_snapshot[group] = [fghsl, bghsl]
      call add(s:hl_orig, orig)
    endfor
  endif

  for [group, colors] in items(s:hl_snapshot)
    let [fghsl, bghsl] = colors

    if empty(fghsl + bghsl)
      continue
    endif

    let hl = 'highlight '.group

    if !empty(fghsl)
      call call(a:func, [fghsl] + a:000)
      let rgb = s:hsl2rgb(fghsl)
      let cterm = s:rgb2term(rgb)
      let hl .= ' ctermfg='.cterm.' guifg=#'.s:rgb2hex(rgb)
    endif

    if !empty(bghsl)
      call call(a:func, [bghsl] + a:000)
      let rgb = s:hsl2rgb(bghsl)
      let cterm = s:rgb2term(rgb)
      let hl .= ' ctermbg='.cterm.' guibg=#'.s:rgb2hex(rgb)
    endif

    execute hl
  endfor
endfunction


function! colorpal#reset() abort
  if exists('s:hl_orig')
    for hl in s:hl_orig
      execute hl
    endfor
  endif
  unlet! s:hl_orig
  unlet! s:hl_snapshot
endfunction


function! colorpal#negative() abort
  call s:theme_adjust(function('s:negative'))
endfunction


function! colorpal#invert() abort
  call s:theme_adjust(function('s:invert'))
endfunction


function! colorpal#complement() abort
  call s:theme_adjust(function('s:complement'))
endfunction


function! colorpal#saturate(count) abort
  call s:theme_adjust(function('s:saturate'), 0.1 * (a:count ? a:count : 1))
endfunction


function! colorpal#desaturate(count) abort
  call s:theme_adjust(function('s:desaturate'), 0.1 * (a:count ? a:count : 1))
endfunction


function! colorpal#lighten(count) abort
  call s:theme_adjust(function('s:lighter'), 0.1 * (a:count ? a:count : 1))
endfunction


function! colorpal#darken(count) abort
  call s:theme_adjust(function('s:darker'), 0.1 * (a:count ? a:count : 1))
endfunction


function! colorpal#brighten(count) abort
  call s:theme_adjust(function('s:brighter'), 0.1 * (a:count ? a:count : 1))
endfunction


function! colorpal#dim(count) abort
  call s:theme_adjust(function('s:dimmer'), 0.1 * (a:count ? a:count : 1))
endfunction

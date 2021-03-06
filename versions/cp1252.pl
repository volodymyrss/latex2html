### File: cp1252.pl
### Version 0.1,  September 10, 1999
### Written by Ross Moore <ross@maths.mq.edu.au>
###
### CP1252 encoding information
###
### based on latin1.pl

## Copyright (C) 1999 by Ross Moore
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
#<!-- (C) International Organization for Standardization 1986
#     Permission to copy in any form is granted for use with
#     conforming SGML systems and applications as defined in
#     ISO 8879, provided this notice is included in all copies.
#     This has been extended for use with HTML to cover the full
#     set of codes in the range 160-255 decimal.
#-->
#<!-- Character entity set. Typical invocation:
#     <!ENTITY % ISOlat1 PUBLIC
#       "ISO 8879-1986//ENTITIES Added Latin 1//EN//HTML">
#     %ISOlat1;
#-->

$CHARSET = "windows-1252";
$INPUTENC='cp1252';  # empty implies 'latin1'

#Character ranges for lower --> upper-case conversion

$sclower = "\\232\\234\\236\\340-\\366\\370-\\376\\377";
$scupper = "\\212\\214\\216\\300-\\326\\330-\\336\\237";

#extra pattern match preceding  lower --> upper-case conversion
$scextra = "s/\\337/ss/g";

%extra_small_caps = ( '223' , 'ss' );

%low_entities = ( '224', '192'
                 ,'225', '193'
                 ,'226', '194'
                 ,'227', '195'
                 ,'228', '196'
                 ,'229', '197'
                 ,'230', '198'
                 ,'231', '199'
                 ,'232', '200'
                 ,'233', '201'
                 ,'234', '202'
                 ,'235', '203'
                 ,'236', '204'
                 ,'237', '205'
                 ,'238', '206'
                 ,'239', '207'
                 ,'240', '208'
                 ,'241', '209'
                 ,'242', '210'
                 ,'243', '211'
                 ,'244', '212'
                 ,'245', '213'
                 ,'246', '214'
#	     ,'247', '215'
                 ,'248', '216'
                 ,'249', '217'
                 ,'250', '218'
                 ,'251', '219'
                 ,'252', '220'
                 ,'253', '221'
                 ,'254', '222'
	     ,'255', '159'
	     ,'158', '142'
	     ,'156', '140'
	     ,'154', '138'
);



sub do_cmd_oe { join('', &iso_map("oe", "lig"), $_[0]);}
sub do_cmd_OE { join('', &iso_map("OE", "lig"), $_[0]);}
# inhibit later wrapping for an image
$raw_arg_cmds{'oe'} = $raw_arg_cmds{'OE'} = -1 ;

#sub do_cmd_l { join('', &iso_map("l", "strok"), $_[0]);}
#sub do_cmd_L { join('', &iso_map("L", "strok"), $_[0]);}
#sub do_cmd_ng { join('', &iso_map("eng", ""), $_[0]);}

sub do_cmd_DH { join('', &iso_map("D", "strok"), $_[0]);}
sub do_cmd_dh { join('', &iso_map("d", "strok"), $_[0]);}
sub do_cmd_ss { join('', &iso_map("sz", "lig"), $_[0]);}

sub do_cmd_texteuro { join('', &iso_map("euro", ""), $_[0]);}
sub do_cmd_quotesinglbase { join('', &iso_map("sbquo", ""), $_[0]);}
sub do_cmd_quotedblbase { join('', &iso_map("dbquo", ""), $_[0]);}
sub do_cmd_textflorin { join('', &iso_map("florin", ""), $_[0]);}
sub do_cmd_dots { join('', &iso_map("ellip", ""), $_[0]);}
sub do_cmd_dag { join('', &iso_map("dagger", ""), $_[0]);}
sub do_cmd_ddag { join('', &iso_map("Dagger", ""), $_[0]);}
sub do_cmd_textperthousand { join('', &iso_map("permil", ""), $_[0]);}
sub do_cmd_guilsinglleft { join('', &iso_map("lsaquo", ""), $_[0]);}
sub do_cmd_guilsinglright { join('', &iso_map("rsaquo", ""), $_[0]);}
sub do_cmd_textquoteleft { join('', &iso_map("lsquo", ""), $_[0]);}
sub do_cmd_textquoteright { join('', &iso_map("rsquo", ""), $_[0]);}
sub do_cmd_textquotedblleft { join('', &iso_map("ldquo", ""), $_[0]);}
sub do_cmd_textquotedblright { join('', &iso_map("rdquo", ""), $_[0]);}
sub do_cmd_textbullet { join('', &iso_map("bullet", ""), $_[0]);}
sub do_cmd_textendash { join('', &iso_map("ndash", ""), $_[0]);}
sub do_cmd_textemdash { join('', &iso_map("mdash", ""), $_[0]);}
sub do_cmd_texttrademark { join('', &iso_map("trade", ""), $_[0]);}

sub do_cmd_textdegree { join('', &iso_map("deg", ""), $_[0]);}
sub do_cmd_textexclamdown { join('', &iso_map("iexcl", ""), $_[0]);}
sub do_cmd_textcent { join('', &iso_map("cent", ""), $_[0]);}
sub do_cmd_textcurrency { join('', &iso_map("curren", ""), $_[0]);}
sub do_cmd_textyen { join('', &iso_map("yen", ""), $_[0]);}
sub do_cmd_textbrokenbar { join('', &iso_map("brvbar", ""), $_[0]);}
sub do_cmd_textregistered { join('', &iso_map("reg", ""), $_[0]);}
sub do_cmd_textquestiondown { join('', &iso_map("iquest", ""), $_[0]);}
sub do_cmd_textperiodcentered { join('', &iso_map("middot", ""), $_[0]);}
sub do_cmd_guillemotleft { join('', &iso_map("laquo", ""), $_[0]);}
sub do_cmd_guillemotright { join('', &iso_map("raquo", ""), $_[0]);}
sub do_cmd_textonequarter { join('', &iso_map("frac14", ""), $_[0]);}
sub do_cmd_textonehalf { join('', &iso_map("frac12", ""), $_[0]);}
sub do_cmd_textthreequarters { join('', &iso_map("frac34", ""), $_[0]);}

sub do_cmd_mathdegree { join('', &iso_map("deg", ""), $_[0]);}
sub do_cmd_mathonesuperior { join('', &iso_map("sup1", ""), $_[0]);}
sub do_cmd_mathtwosuperior { join('', &iso_map("sup2", ""), $_[0]);}
sub do_cmd_maththreesuperior { join('', &iso_map("sup3", ""), $_[0]);}
sub do_cmd_mathordmasculine { join('', &iso_map("ordm", ""), $_[0]);}
sub do_cmd_mathordfeminine { join('', &iso_map("ordf", ""), $_[0]);}

sub do_cmd_P { join('', &iso_map("para", ""), $_[0]);}
sub do_cmd_S { join('', &iso_map("sect", ""), $_[0]);}

sub do_cmd_pm { join('', &iso_map("plusmn", ""), $_[0]);}
sub do_cmd_div { join('', &iso_map("divide", ""), $_[0]);}
sub do_cmd_times { join('', &iso_map("times", ""), $_[0]);}
#sub do_cmd_minus { join('', &iso_map("shy", ""), $_[0]);}
sub do_cmd_copyright { join('', &iso_map("copy", ""), $_[0]);}
sub do_cmd_pounds { join('', &iso_map("pound", ""), $_[0]);}
sub do_cmd_cents { join('', &iso_map("cent", ""), $_[0]);}
sub do_cmd_lnot { join('', &iso_map("not", ""), $_[0]);}
sub do_cmd_cdot { join('', &iso_map("middot", ""), $_[0]);}
sub do_cmd_micron { join('', &iso_map("micro", ""), $_[0]);}

%windows_1252_character_map
     = (
       'AElig', '&#198;',       # capital AE diphthong (ligature)
       'Aacute', '&#193;',      # capital A, acute accent
       'Acirc', '&#194;',       # capital A, circumflex accent
       'Agrave', '&#192;',      # capital A, grave accent
       'Aring', '&#197;',       # capital A, ring
       'Atilde', '&#195;',      # capital A, tilde
       'Auml', '&#196;',        # capital A, dieresis or umlaut mark
       'Ccedil', '&#199;',      # capital C, cedilla
       'ETH', '&#208;',         # capital Eth, Icelandic
       'Eacute', '&#201;',      # capital E, acute accent
       'Ecirc', '&#202;',       # capital E, circumflex accent
       'Egrave', '&#200;',      # capital E, grave accent
       'Euml', '&#203;',        # capital E, dieresis or umlaut mark
       'Iacute', '&#205;',      # capital I, acute accent
       'Icirc', '&#206;',       # capital I, circumflex accent
       'Igrave', '&#204;',      # capital I, grave accent
       'Iuml', '&#207;',        # capital I, dieresis or umlaut mark
       'Ntilde', '&#209;',      # capital N, tilde
       'OElig', '&#140;',
       'Oacute', '&#211;',      # capital O, acute accent
       'Ocirc', '&#212;',       # capital O, circumflex accent
       'Ograve', '&#210;',      # capital O, grave accent
       'Oslash', '&#216;',      # capital O, slash
       'Otilde', '&#213;',      # capital O, tilde
       'Ouml', '&#214;',        # capital O, dieresis or umlaut mark
       'Scaron', '&#138;',
       'THORN', '&#222;',       # capital THORN, Icelandic
       'Uacute', '&#218;',      # capital U, acute accent
       'Ucirc', '&#219;',       # capital U, circumflex accent
       'Ugrave', '&#217;',      # capital U, grave accent
       'Uuml', '&#220;',        # capital U, dieresis or umlaut mark
       'Yacute', '&#221;',      # capital Y, acute accent
       'Yuml'  , '&#159;',
       'Zcaron', '&#142;',
#
       'aacute', '&#225;',      # small a, acute accent
       'acirc', '&#226;',       # small a, circumflex accent
       'aelig', '&#230;',       # small ae diphthong (ligature)
       'agrave', '&#224;',      # small a, grave accent
       'amp', '&amp;',  # ampersand
       'aring', '&#229;',       # small a, ring
       'atilde', '&#227;',      # small a, tilde
       'auml', '&#228;',        # small a, dieresis or umlaut mark
       'ccedil', '&#231;',      # small c, cedilla
       'eacute', '&#233;',      # small e, acute accent
       'ecirc', '&#234;',       # small e, circumflex accent
       'egrave', '&#232;',      # small e, grave accent
       'eth', '&#240;',         # small eth, Icelandic
       'euml', '&#235;',        # small e, dieresis or umlaut mark
       'gt', '&#62;',   # greater than
       'iacute', '&#237;',      # small i, acute accent
       'icirc', '&#238;',       # small i, circumflex accent
       'igrave', '&#236;',      # small i, grave accent
       'iuml', '&#239;',        # small i, dieresis or umlaut mark
       'lt', '&lt;',    # less than
       'ntilde', '&#241;',      # small n, tilde
       'oacute', '&#243;',      # small o, acute accent
       'ocirc', '&#244;',       # small o, circumflex accent
       'oelig', '&#156;',
       'ograve', '&#242;',      # small o, grave accent
       'oslash', '&#248;',      # small o, slash
       'otilde', '&#245;',      # small o, tilde
       'ouml', '&#246;',        # small o, dieresis or umlaut mark
       'scaron', "&#154;",
       'szlig', '&#223;',       # small sharp s, German (sz ligature)
       'thorn', '&#254;',       # small thorn, Icelandic
       'uacute', '&#250;',      # small u, acute accent
       'ucirc', '&#251;',       # small u, circumflex accent
       'ugrave', '&#249;',      # small u, grave accent
       'uuml', '&#252;',        # small u, dieresis or umlaut mark
       'yacute', '&#253;',      # small y, acute accent
       'yuml', '&#255;',        # small y, dieresis or umlaut mark
       'zcaron', '&#158;',
       'quot', '&quot;',        # double quote

# These have HTML mnemonic names for HTML 4.0 ...
       'euro',  '&#128;', 
       'sbquo', '&#130;', 
       'florin', '&#131;', 
       'dbquo', '&#132;', 
       'hellip', '&#133;', 
       'dagger', '&#134;', 
       'Dagger', '&#135;', 
       'caret', '&#136;',   # caret accent
       'tilde', '&#152;',   # tilde accent
       'permil', '&#137;',   # 
       'lsaquo', '&#139;',   # 
       'rsaquo', '&#155;',   # 
       'lsquo', '&#145;', 
       'rsquo', '&#146;', 
       'ldquo', '&#147;', 
       'rdquo', '&#148;', 
       'bull', '&#149;', 
       'ndash', '&#150;', 
       'mdash', '&#151;', 
       'trade', '&#152;',   # trademark symbol
       'nbsp', '&#160;',       # non-breaking space
       'iexcl', '&#161;',      # exclamation mark - upside down
       'cent', '&#162;',       # cents sign
       'pound', '&#163;',      # pound sign
       'curren', '&#164;',     # currency sign
       'yen', '&#165;',        # Yen sign
       'brvbar', '&#166;',  
       'sect', '&#167;',       # section mark
       'copy', '&#169;',       # copyright mark
       'ordf', '&#170;',
       'ordm', '&#186;',
       'laquo', '&#171;', 
       'raquo', '&#187;', 
       'not', '&#172;',
       'shy', '&#173;',
       'reg', '&#174;',
       'deg', '&#176;',
       'plusmn', '&#177;',
       'sup1', '&#185;',
       'sup2', '&#178;',
       'sup3', '&#179;',
       'micro', '&#181;',
       'para', '&#182;',   # paragraph mark
       'middot', '&#183;',
       'frac14', '&#188;',
       'frac12', '&#189;',
       'frac34', '&#190;',
       'iquest', '&#191;',  # question mark - upside down
       'times', '&#215;',
       'divide', '&#247;',

# These are character types without arguments ...
       'grave' , "`",
       'acute' , "&#180;",
       'circ', '^',
#       'tilde', '&#126;',
#       'ring', '&#176;',
       'dot', '.',
       'uml', '&#168;',
       'macr' , '&#175;',
       'dblac', "&#180;&#180;",
       'cedil', "&#184;"
	);

%windows_1252_character_map_inv =
    (
     '^'      , '\\^{}',
     '&#62;'  , '\\ensuremath{>}',
     '&lt;'   , '\\ensuremath{<}',
     '&amp;'  , '\\&',
     '&#126;' , '\\~{}',
     '&#128;' , '\\texteuro{}',
     '&#130;' , '\\quotesinglbase{}',
     '&#131;' , '\\textflorin{}',
     '&#132;' , '\\quotedblbase{}',
     '&#133;' , '\\dots{}',
     '&#134;' , '\\dag{}',
     '&#135;' , '\\ddag{}',
     '&#136;' , '\\^{}',
     '&#137;' , '\\textperthousand{}',
     '&#138;' , '\\v{S}',
     '&#139;' , '\\guilsinglleft{}',
     '&#140;' , '\\OE{}',
     '&#142;' , '\\v{Z}',
     '&#145;' , '\\textquoteleft{}',
     '&#146;' , '\\textquoteright{}',
     '&#147;' , '\\textquotedblleft{}',
     '&#148;' , '\\textquotedblright{}',
     '&#149;' , '\\textbullet{}',
     '&#150;' , '\\textendash{}',
     '&#151;' , '\\textemdash{}',
     '&#152;' , '\\~{}',
     '&#153;' , '\\texttrademark{}',
     '&#154;' , '\\v{s}',
     '&#155;' , '\\guilsinglright{}',
     '&#156;' , '\\oe{}',
     '&#158;' , '\\v{z}',
     '&#159;' , '\\"{Y}',
	'&#160;' , '\\nobreakspace{}',
#	'&#161;' , '\\textexclamdown{}',
     '&#161;' , '!`',
	'&#162;' , '\\textcent{}',
     '&#163;' , '\\pounds{}',
	'&#164;' , '\\textcurrency{}',
	'&#165;' , '\\textyen{}',
	'&#166;' , '\\textbrokenbar{}',
     '&#167;' , '\\S{}',
     '&#168;' , '\\"{}',
     '&#169;' , '\\copyright{}',
#	'&#170;' , '\\mathordfeminine{}',
	'&#170;' , '\\ensuremath{^{a}}',
	'&#171;' , '\\guillemotleft{}',
	'&#172;' , '\\ensuremath{\\lnot{}}',
	'&#173;' , '\\-',
#	'&#174;' , '\\textregistered{}',
	 '&#174;' , '\\ensuremath{\\circledR}',
     '&#175;' , '\\={}',
#	'&#176;' , '\\mathdegree{}',
     '&#176;' , '\\ensuremath{^{\circ}}',
	'&#177;' , '\\ensuremath{\\pm}',
#	'&#178;' , '\\mathtwosuperior{}',
	'&#178;' , '\\ensuremath{^{2}}',
#	'&#179;' , '\\maththreesuperior{}',
	'&#179;' , '\\ensuremath{^{3}}',
     '&#180;' , '\\\'{}',
	'&#181;' , '\\ensuremath{\\mu}',
     '&#182;' , '\\P{}',
#	'&#183;' , '\\textperiodcentered{}',
     '&#183;' , '\\cdot{}',
     '&#184;' , '\\c{ }',
#	'&#185;' , '\\mathonesuperior{}',
	'&#185;' , '\\ensuremath{^{1}}',
#	'&#186;' , '\\mathordmasculine{}',
	'&#186;' , '\\ensuremath{^{o}}',
	'&#187;' , '\\guillemotright{}',
#	'&#188;' , '\\textonequarter{}',
	'&#188;' , '\\ensuremath{\\frac{1}{4}}',
#	'&#189;' , '\\textonehalf{}',
	'&#189;' , '\\ensuremath{\\frac{1}{2}}',
#	'&#190;' , '\\textthreequarters{}',
	'&#190;' , '\\ensuremath{\\frac{3}{4}}',
#	'&#191;' , '\\textquestiondown{}',
     '&#191;' , '?`',
     '&#192;' , '\\`{A}',
     '&#193;' , '\\\'{A}',
     '&#194;' , '\\^{A}',
     '&#195;' , '\\~{A}',
     '&#196;' , '\\"{A}',
#     '&#197;' , '\\AA{}',
     '&#197;' , '\\r{A}',
     '&#198;' , '\\AE{}',
     '&#199;' , '\\c{C}',
     '&#200;' , '\\`{E}',
     '&#201;' , '\\\'{E}',
     '&#202;' , '\\^{E}',
     '&#203;' , '\\"{E}',
     '&#204;' , '\\`{I}',
     '&#205;' , '\\\'{I}',
     '&#206;' , '\\^{I}',
     '&#207;' , '\\"{I}',
     '&#208;' , '\\DH{}',
     '&#209;' , '\\~{N}',
     '&#210;' , '\\`{O}',
     '&#211;' , '\\\'{O}',
     '&#212;' , '\\^{O}',
     '&#213;' , '\\~{O}',
     '&#214;' , '\\"{O}',
     '&#215;' , '\\ensuremath{\\times}',
     '&#216;' , '\\O{}',
     '&#217;' , '\\`{U}',
     '&#218;' , '\\\'{U}',
     '&#219;' , '\\^{U}',
     '&#220;' , '\\"{U}',
     '&#221;' , '\\\'{Y}',
     '&#222;' , '\\TH{}',
     '&#223;' , '\\ss{}',
     '&#224;' , '\\`{a}',
     '&#225;' , '\\\'{a}',
     '&#226;' , '\\^{a}',
     '&#227;' , '\\~{a}',
     '&#228;' , '\\"{a}',
#     '&#229;' , '\\aa{}',
     '&#229;' , '\\r{a}',
     '&#230;' , '\\ae{}',
     '&#231;' , '\\c{c}',
     '&#232;' , '\\`{e}',
     '&#233;' , '\\\'{e}',
     '&#234;' , '\\^{e}',
     '&#235;' , '\\"{e}',
     '&#236;' , '\\`{\\i}',
     '&#237;' , '\\\'{\\i}',
     '&#238;' , '\\^{\\i}',
     '&#239;' , '\\"{\\i}',
     '&#240;' , '\\dh{}',
     '&#241;' , '\\~{n}',
     '&#242;' , '\\`{o}',
     '&#243;' , '\\\'{o}',
     '&#244;' , '\\^{o}',
     '&#245;' , '\\~{o}',
     '&#246;' , '\\"{o}',
     '&#247;' , '\\ensuremath{\\div}',
     '&#248;' , '\\o{}',
     '&#249;' , '\\`{u}',
     '&#250;' , '\\\'{u}',
     '&#251;' , '\\^{u}',
     '&#252;' , '\\"{u}',
     '&#253;' , '\\\'{y}',
     '&#254;' , '\\th{}',
     '&#255;' , '\\"{y}'
);

1;







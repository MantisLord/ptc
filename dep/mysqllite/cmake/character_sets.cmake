# Copyright (C) 2009 Sun Microsystems, Inc
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA 

#Charsets and collations
IF(NOT DEFAULT_CHARSET)
SET(DEFAULT_CHARSET "latin1")
ENDIF()

IF(NOT DEFAULT_COLLATIONS)
SET(DEFAULT_COLLATION "latin1_swedish_ci")
ENDIF()

SET(CHARSETS_AVAILABLE 
binary armscii8 ascii big5 cp1250 cp1251 cp1256 cp1257
cp850 cp852 cp866 cp932 dec8 euckr gb2312 gbk geostd8
greek hebrew hp8 keybcs2 koi8r koi8u
latin1 latin2 latin5 latin7 macce macroman
swe7 tis620 ucs2 utf8 utf8mb4 utf16 utf32)

SET(MYSQL_DEFAULT_CHARSET_NAME "${DEFAULT_CHARSET}") 
SET(MYSQL_DEFAULT_COLLATION_NAME "${DEFAULT_COLLATION}")

FOREACH(cs in ${CHARSETS_AVAILABLE})
  SET(HAVE_CHARSET_${cs} 1)
ENDFOREACH()

SET(HAVE_UCA_COLLATIONS 1)

SET(HAVE_UTF8_GENERAL_CS 1)
SET(USE_MB 1)
SET(USE_MB_IDENT 1)

#!/bin/bash

# Copyright (C) 2012  Mark Rickert mjar81@gmail.com
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# What it does:
## Loops over a set of files and creates individual folders with the exact same
## name, then moves the appropriate file into the aforementioned folder.

# How to use:
## Pass the script a set of files like this:
## ./files_to_dir.sh *.txt
## or
## ./files_to_dir.sh *.pdf

shopt -s nullglob
for f in "$@"
do
  FILE_NO_EXT=`echo $f | perl -pe 's/(.*)\..*$/$1/;s{^.*/}{}'`
  mkdir "$FILE_NO_EXT"
  echo "Moving $f into directory: $FILE_NO_EXT"
  mv "$f" "$FILE_NO_EXT"
done
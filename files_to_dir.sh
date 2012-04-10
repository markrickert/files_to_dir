#!/bin/bash

# By Mark Rickert mjar81@gmail.com

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
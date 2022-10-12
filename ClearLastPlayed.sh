#!/bin/sh

for f in /mnt/z/Emulation/roms/**/gamelist.xml; do
	echo "file: $f"
	grep -e \<lastplayed\> -e \<playcount\> -v $f > "$f.tmp"
	mv -f "$f.tmp" $f
done

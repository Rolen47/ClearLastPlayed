#!/bin/sh

for f in /mnt/z/Emulation/roms/**/gamelist.xml; do
	echo "file: $f"
	grep -e \<crc32\> -e \<cheevosHash\> -e \<cheevosId\> -v $f > "$f.tmp"
	mv -f "$f.tmp" $f
done

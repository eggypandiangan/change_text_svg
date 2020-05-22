#!/bin/bash

IFS=$'\n' read -d '' -r -a lines < avi.txt

for i in  "${lines[@]}"; do
	echo $i
	sed "s/Nama/$i/g" sertifmme1.svg > "$i".svg && cairosvg "$i".svg -o "$i".pdf
done

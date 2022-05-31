#!/bin/sh
if [ "$1" = "" ]
then
    echo "[ERROR] 引数にリストのファイルを指定してください。"
    exit
fi

for i in $(cat $1)
do
    echo "---------------------"
    echo "Target File: ${i}"
    filename=${i%.png}
    echo "${filename}";
    convert "${filename}.png" -resize 600x600 -density 72 -quality 100 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}_600_600.png"
    convert "${filename}.png" -resize 300x300 -density 72 -quality 100 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}_300_300.png"
    convert "${filename}.png" -resize 750x -gravity center -extent 750x600 -density 72 -quality 100 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}_750_600.png"
    convert "${filename}.png" -resize 443x443 -density 72 -quality 100 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}_443_443.png"
    convert "${filename}.png" -resize 196x196 -density 72 -quality 100 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}_196_196.png"
    convert "${filename}.png" -resize 98x98 -density 72 -quality 100 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}_98_98.png"
done


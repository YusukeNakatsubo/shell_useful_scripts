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
    filename=${i%.jpg}
    echo "${filename}";
    convert "${filename}.jpg" -resize 400x -density 72 -quality 85 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}.jpg"
done


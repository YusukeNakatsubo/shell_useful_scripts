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
    convert "${filename}.jpg" -resize 750x500 -density 72 -quality 70 -colorspace srgb -auto-orient +profile '!icc,*' "${filename}.jpg"
done


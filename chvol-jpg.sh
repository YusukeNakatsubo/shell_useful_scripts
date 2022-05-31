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
    convert "${filename}.jpg" -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace sRGB "${filename}.jpg"
done


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
    convert "${filename}.png" "${filename}.jpg"
    filename=${i%.jpeg}
    echo "${filename}"
    convert "${filename}.jpeg" "${filename}.jpg"
    filename=${i%.JPG}
    echo "${filename}"
    convert "${filename}.JPG" "${filename}.jpg"
    filename=${i%.tif}
    echo "${filename}"
    convert "${filename}.tif" "${filename}.jpg"
 done

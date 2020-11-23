#!/usr/bin/env bash
notebook_dir=$1
search=$2

find $notebook_dir -type f -name "*.ipynb" ! -name "*checkpoint*" |
while read f
do
    output=$(grep "$search" "$f")
    if [[ -n "$output" ]]
    then
        echo $f
    fi
done

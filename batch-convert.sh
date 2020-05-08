#!/bin/bash

input=/input/
output=/output

find $input -name '*.heic' -or -name '*.HEIC'| while read i; do
    [ -f "${i}" ] || break
    
    filename="$(basename $i)"
    filebasename="${filename%.*}"
    folder="$(dirname $i)"
    
    outputfullpath="$output$folder$filebasename.jpg"
    
    if [ ! -f $outputfullpath ]; then
        echo "$i -> $outputfullpath"
        /tifig/build/tifig -v -p "$i" $outputfullpath
        #touch -r "$i" $outputfullpath
    else
        echo $outputfullpath already exists"
    fi
done
